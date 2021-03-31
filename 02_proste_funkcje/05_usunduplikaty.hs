{-
Napisz funkcję usunduplikaty, która usunie ze stringa powtarzające się znaki.
Podpowiedzi:
* string to lista
* przydatna może być funkcja usuwająca wszystkiego wystąpienia danego elementu z listy

PS zamiast 
    "usunduplikaty :: [Char] -> [Char]" 
mogłoby być 
    "usunduplikaty :: (Eq a) => [a] -> [a]"
Funkcja byłaby wtedy bardziej uniwersalna
-}
usunduplikaty :: [Char] -> [Char]
usunduplikaty [] = []
usunduplikaty (a': a) 
    	| a' `elem` a = usunduplikaty a
        | otherwise = a' : usunduplikaty a 
