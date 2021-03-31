{-
Zdefiniuj funkcję supercyfra zgodnie z instrukcjami
Podpowiedzi:
* `div` i `mod` mogą się przydać
* podwójna rekurencja!  
-}
<<<<<<< HEAD
cyfry :: Int -> [Int]
cyfry 0 = []
cyfry x = cyfry (x `div` 10) ++ [x `mod` 10]

supercyfra :: Int->Int
supercyfra x
	| x < 10 = x
	| otherwise = supercyfra (sum(cyfry x))
=======
sumacyfr :: Int->Int
sumacyfr 0 = 0
sumacyfr x = x `mod` 10 + sumacyfr(x `div` 10)

supercyfra :: Int -> Int
supercyfra x | x<10 = x | otherwise = supercyfra(sumacyfr x)
>>>>>>> 21358b77ee5f23e859d721d34e33e82b8f5d2331
