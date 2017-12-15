module ARM.MRAS.Parse.Internal.Common
    ( (<&>)
    , unescape
    ) where

infixl 4 <&>
(<&>) :: Functor f => f a -> (a -> b) -> f b
(<&>) = flip fmap

unescape :: String -> String
unescape ('&':'l':'t':';':cs) = '<' : unescape cs 
unescape ('&':'g':'t':';':cs) = '>' : unescape cs
unescape ('&':'a':'m':'p':';':cs) = '&' : unescape cs
unescape (c:cs) = c : unescape cs
unescape [] = []
