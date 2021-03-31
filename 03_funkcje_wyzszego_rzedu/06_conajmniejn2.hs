conajmniejn :: [Int] -> Int -> [Int]
conajmniejn list n = 
	let ile_razy _ [] = 0
	    ile_razy z (y:ys) = if (z==y) then 1 + (ile_razy z ys) else ile_razy z ys
	in nub1 ( filter (\b-> ile_razy b list >= n) list) []
	where nub1 [] _         = []
          nub1 (x:xs) ls
        	| x `elem` ls   = nub1 xs ls
    		| otherwise     = x : nub1 xs (x:ls) 

