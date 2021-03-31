import System.Random (randomRIO)
 
smallest = 0 :: Integer
biggest = 10 :: Integer

main :: IO ()
main = do
    num <- randomRIO(smallest, biggest) :: IO Integer
    putStrLn "System wylosowal liczbe od 0 do 10"
    guessing num 3

guessing :: Integer -> Integer -> IO ()
guessing num tries = do
  if (tries<=0) then do putStrLn "Przegrales!"
  else do
          putStrLn "Sprobuj zgadnac!"
          answer <- readLn :: IO Integer
          case compare answer num of
            LT -> do putStrLn "Liczba za mala!"
                     guessing num (tries-1)
            GT -> do putStrLn "Liczba za duza!"
                     guessing num (tries-1)
            EQ -> putStrLn "Gratulacje, wygrales!:)"