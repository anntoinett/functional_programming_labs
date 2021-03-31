{-
Zdefiniuję funkcję zip', działającą tak samo jak zip!
Podpowiedzi:
* poniżej jest już widoczna definicja typu tej funkcji
* są trzy przypadki: pierwsza lista jest pusta, druga lista jest pusta, obie są niepuste
-}
myzip :: [a] -> [b] -> [(a,b)]
myzip (a:as) (b:bs) = (a,b) : myzip as bs
myzip _ _ = []
