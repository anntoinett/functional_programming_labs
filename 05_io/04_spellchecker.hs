import System.IO
import Data.Char
import Data.List.Split
import Data.List

main = do  
    file_as_string <- readFile "/usr/share/dict/words"
    to_check <- readFile "machine.txt"
    let file_lines = lines $ map toLower file_as_string
    let words_to_check = words $ map toLower $ removePuncMarks to_check

    writeFile "words_not_in_system_file.txt" $ concat $ intersperse "\n" $ filter (\w -> notElem w file_lines) words_to_check

removePuncMarks :: String -> String
removePuncMarks s = [x | x <- s, notElem x ".,:;?!-*()_\""]