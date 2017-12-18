module Values
    ( bigTy
    , littleTys
    , littleFns
    , decodeTable
    , decodeFns
    -- , encodeFn
    -- , parseFn
    -- , showFn
    ) where

import MnemGroups
import ReadLogic

import Harm.Types.Pattern

import ARM.MRAS

import Control.Lens
import Data.Char
import Data.List
import Language.Haskell.Exts.Syntax

import Control.Exception
import Debug.Trace

-- insnsGrouped :: [(Mnemonic, [(EncodingIdSuffix, Pattern, [DiagramField])])]
-- insnsFlat :: [(Mnemonic, EncodingIdSuffix, Pattern, [DiagramField])]
-- type Logic = [(GroupId, Template, [EncodingId], [Type ()], [FieldName])]

assemble :: Mnemonic -> EncodingIdSuffix -> EncodingId
assemble m s = m ++ "_" ++ s

bigTy :: [Mnemonic]
bigTy = map fst insnsGrouped

littleTys :: Logic -> [(Mnemonic, [(EncodingId, [Type ()])])]
littleTys l = map f insnsGrouped
  where
    f (mnem, encs) = (mnem, map g encs)
      where
        g (suffix, _, _) = (eid, tys)
          where
            eid = assemble mnem suffix
            Just (_, gid, tplt, tys', fs) = find ((== eid) . view _1) (eidAssocs l)
            tys = case special tplt of
                None -> tys'
                Two -> TyCon () (UnQual () (Ident () "Half")) : tys'
                Cond -> TyCon () (UnQual () (Ident () "Cond")) : tys'

littleFns :: Logic -> [(String, [Type ()], Mnemonic, EncodingId)]
littleFns = concatMap f . littleTys
  where
    f (mnem, encs) = map g encs
      where
        g (encid, tys) = (map toLower encid, tys, mnem, encid)

decodeTable :: Logic -> [(Pattern, GroupId, EncodingId)]
decodeTable l = map f insnsFlat
  where
    f (mnem, suffix, patt, _) = (patt, gid, eid)
      where
        eid = assemble mnem suffix
        Just (_, gid, tplt, tys', fs) = find ((== eid) . view _1) (eidAssocs l)

decodeFns :: Logic -> [(GroupId, [Type ()], Exp (), [Exp ()])]
decodeFns l = 
    [ let (exp, exps) = f eids fdns tplt
          tys' = case special tplt of
            None -> tys
            Two -> TyCon () (UnQual () (Ident () "Half")) : tys
            Cond -> TyCon () (UnQual () (Ident () "Cond")) : tys
      in (gid, tys', exp, exps)
    | (gid, tplt, eids, tys, fdns) <- l
    ]
  where
    f eids fdns tplt = homog (map g eids)
      where
        g eid = (arg, args)
          where
            flds' = [ fld | fld@(DiagramField width lo name) <- flds, name `elem` fdns ]
            Just (_, _, _, flds) = find (\(m, s, _, _) -> assemble m s == eid) insnsFlat
            args = [ App ()
                        (App ()
                            (Var () (UnQual () (Ident () "slice")))
                            (Var () (UnQual () (Ident () "w"))))
                        (Lit () (Int () (toInteger lo) (show lo)))
                   | DiagramField w lo n <- flds'
                   ]
            arg = case special tplt of
                None -> (Var () (UnQual () (Ident () "f")))
                Two -> App () (Var () (UnQual () (Ident () "f"))) 
                        (App ()
                            (Var () (UnQual () (Ident () "toHalf")))
                            (App ()
                                (App ()
                                    (Var () (UnQual () (Ident () "slice")))
                                    (Var () (UnQual () (Ident () "w"))))
                                (Lit () (Int () 30 "30"))))
                Cond -> App () (Var () (UnQual () (Ident () "f"))) 
                        (App ()
                            (Var () (UnQual () (Ident () "toCond")))
                            (App ()
                                (App ()
                                    (Var () (UnQual () (Ident () "slice")))
                                    (Var () (UnQual () (Ident () "w"))))
                                (Lit () (Int () 0 "0"))))

homog :: Eq a => [a] -> a
homog xs@(x:_) = all (== x) xs `assert` x

eidAssocs :: Logic -> [(EncodingId, GroupId, Template, [Type ()], [FieldName])]
eidAssocs l = concatMap f l
  where
    f (gid, tplt, eids, tys, fs) = [ (eid, gid, tplt, tys, fs) | eid <- eids ]

data Special = None | Two | Cond deriving Show

special :: Template -> Special
special t = case t of
    [] -> None
    ' ':_ -> None
    '{':'2':'}':' ':_ -> Two
    '.':'<':'c':'o':'n':'d':'>':' ':_ -> Cond
