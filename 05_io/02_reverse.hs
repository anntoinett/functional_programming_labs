main = do
	putStrLn "Podaj tekst do odwrocenia: "   
	line <- getLine  
	if null line then return ()  
    else do  
        putStrLn $ reverse line
        putStrLn ""
        main