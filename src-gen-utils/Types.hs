module Types
    (
    ) where


data ISA = A64
    deriving Show

data Diagram = Diagram [Box]
    deriving Show

data Box = Fixed (Maybe String) [Bool] | Bound String Int
    deriving Show

data Binding = Binding String [Bool]
    deriving Show

data Encoding = Encoding [Binding] Template
    deriving Show

data Template = Template String
    deriving Show


bind :: Diagram -> Binding -> Maybe Diagram
bind (Diagram boxes) (Binding name pattern) = Diagram <$> go False boxes
  where
    go True [] = Just []
    go False [] = Nothing
    go matched (b:bs) = case b of
        Bound n width | n == name && width == length pattern ->
            if matched
            then Nothing
            else (:) (Fixed (Just name) pattern) <$> go True bs
        _ -> (:) b <$> go matched bs
