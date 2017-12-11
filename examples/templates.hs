import ARM.MRAS
import Control.Lens
import Data.List
import Data.Monoid

templates :: [String]
templates = sort $ (base ++ fpsimd) ^.. traverse.classes.class_encodings.traverse.encoding_template
  where
    classes = insn_classes.traverse._1 <> insn_aliases.traverse.alias_class

main = mapM_ putStrLn templates
