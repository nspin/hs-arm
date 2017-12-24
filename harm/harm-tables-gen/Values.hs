module Values
    ( bigTy
    , littleTys
    , littleFns
    , decodeTable
    , decodeFns
    , encodeFn
    , encodeFns
    , parseTable
    -- , showFn

    , lower
    ) where

import MnemGroups
import ReadLogic

import Harm.Types.Pattern

import ARM.MRAS hiding (Symbol)

import Control.Lens
import Data.Char
import Data.List
import Data.Word
import Language.Haskell.Exts.Syntax

import Control.Exception
import Debug.Trace

-- insnsGrouped :: [(Mnemonic, [(EncodingIdSuffix, Pattern, [DiagramField])])]
-- insnsFlat :: [(Mnemonic, EncodingIdSuffix, Pattern, [DiagramField])]
-- type Logic = [(GroupId, Template, [EncodingId], [Type ()], [DiagramField])]

bigTy :: [Mnemonic]
bigTy = map fst insnsGrouped

littleTys :: Logic -> [(Mnemonic, [(EncodingId, [Type ()])])]
littleTys logic =
    [ ( mnem
      , [ let eid = mkeid mnem suffix
              (gid, tplt, tys, dfs) = lookupEid logic eid
          in (eid, tys)
        | (suffix, _, _) <- encs
        ]
      )
    | (mnem, encs) <- insnsGrouped
    ]

littleFns :: Logic -> [(Mnemonic, EncodingId, [Type ()])]
littleFns logic = concat
    [ [ (mnem, encid, tys)
      | (encid, tys) <- encs
      ]
    | (mnem, encs) <- littleTys logic
    ]

decodeTable :: Logic -> [(Pattern, GroupId, EncodingId)]
decodeTable logic =
    [ let eid = mkeid mnem suffix
          (gid, _, _, _) = lookupEid logic eid
      in (patt, gid, eid)
    | (mnem, suffix, patt, _) <- insnsFlat
    ]

decodeFns :: Logic -> [(GroupId, [Type ()], [Exp ()])]
decodeFns logic = 
    [ let args =
            [ App ()
                (App ()
                    (Var () (UnQual () (Ident () "slice")))
                    (Var () (UnQual () (Ident () "w"))))
                (Lit () (Int () (toInteger lo) (show lo)))
            | DiagramField w lo n <- dfs
            ]
      in (gid, tys, args)
    | (gid, tplt, eids, tys, dfs) <- logic
    ]

-- TODO(nspin) add checks to ensure that every bit of every encoding is specified (not hard)
encodeFn :: Logic -> [(Mnemonic, EncodingId, Int, GroupId, Word32)]
encodeFn logic =
    [ let eid = mkeid mnem suffix
          (gid, _, tys, _) = lookupEid logic eid
      in (mnem, eid, length tys, gid, spec)
    | (mnem, suffix, Pattern (Atom spec _) _, _) <- insnsFlat
    ]

encodeFns :: Logic -> [(GroupId, Int, Exp ())]
encodeFns logic =
    [ let exp = foldr f
            (Var () (UnQual () (Ident () "w")))
            (zip [1..] dfs)
          f (i, (DiagramField _ lo _)) =
            InfixApp ()
                (App ()
                    (App ()
                        (Var () (UnQual () (Ident () "unslice")))
                        (Var () (UnQual () (Ident () ("x" ++ show i)))))
                    (Lit () (Int () (toInteger lo) (show lo))))
                (QVarOp () (UnQual () (Symbol () ".|.")))
      in (gid, length dfs, exp)
    | (gid, tplt, eids, tys, dfs) <- logic
    ]

parseTable :: Logic -> [(Mnemonic, EncodingId, GroupId)]
parseTable logic =
    [ let eid = mkeid mnem suffix
          (gid, _, _, _) = lookupEid logic eid
      in (mnem, eid, gid)
    | (mnem, suffix, _, _) <- insnsFlat
    ]


lookupEid :: Logic -> EncodingId -> (GroupId, Template, [Type ()], [DiagramField])
lookupEid logic eid = (gid, tplt, tys, fs)
  where
    Just (_, gid, tplt, tys, fs) = find ((== eid) . view _1) (eidAssocs logic)

eidAssocs :: Logic -> [(EncodingId, GroupId, Template, [Type ()], [DiagramField])]
eidAssocs l = concatMap f l
  where
    f (gid, tplt, eids, tys, fs) = [ (eid, gid, tplt, tys, fs) | eid <- eids ]

lower :: EncodingId -> String
lower = map toLower

-- homog :: Eq a => [a] -> a
-- homog xs@(x:_) = all (== x) xs `assert` x

-- data Special = None | Two | Cond deriving Show

-- special :: Template -> Special
-- special t = case t of
--     [] -> None
--     ' ':_ -> None
--     '{':'2':'}':' ':_ -> Two
--     '.':'<':'c':'o':'n':'d':'>':' ':_ -> Cond
