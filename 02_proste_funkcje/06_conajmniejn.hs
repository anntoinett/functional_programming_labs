{-
Zdefiniuj funkcję conajmniejn, która zostawia w liście elementy, które występuje co najmniej określoną liczbę razy
Podpowiedzi:
* przydatna może okazać się pomocnicza funkcja, która zlicza liczbę wystąpień danego elementu w liście
* przydatna może okazać się pomocnicza funkcja, która usuwa wszystkie wystąpienia danego elementu w liście
* w ramach optymalizacji obie te pomocnicze funkcje można zaimplementować w postaci jednej funkcji
-}
<<<<<<< HEAD
import Data.List

ile_razy :: (Eq a) => a->[a]->Int
ile_razy _ [] = 0
ile_razy z (y:ys) 
	| (z `notElem` (y:ys)) = 0
	| z == y = 1 + ile_razy z ys
	| otherwise = ile_razy z ys

conajmniejn :: (Eq a) => [a] -> Int -> [a]
conajmniejn list n = nub ( filter (\b-> ile_razy b list >= n) list)
=======
usun_znak :: (Eq a) => a -> [a] -> [a]
usun_znak a list = [elem | elem <- list, elem /= a]

ile :: (Eq a) => a -> [a] -> Int
ile x lista = length [y| y <- lista, y == x]

conajmniejn :: (Eq a) => [a] -> Int -> [a]
conajmniejn [] x = []
conajmniejn l@(h:t) x = if (ile h l) >= x
                      then h : (conajmniejn(usun_znak h t) x)
                      else conajmniejn t x

{-conajmniejn (h:t) x | ile h t >=x = h : (conajmniejn(usun_znak h t) x)
                    | otherwise = conajmniejn t x -}
>>>>>>> 21358b77ee5f23e859d721d34e33e82b8f5d2331
