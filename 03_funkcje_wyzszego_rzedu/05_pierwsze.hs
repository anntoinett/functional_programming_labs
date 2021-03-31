pierwsze :: [Int] -> [Int]
-- funkcja znajdujące w podanej liście wszystkie liczby pierwsze
pierwsze list = filter (\x -> length(filter (\n -> mod x n == 0) [1..x]) == 2) list