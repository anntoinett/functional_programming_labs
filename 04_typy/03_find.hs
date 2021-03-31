find :: (a -> Bool) -> [a] -> Maybe a
find func (x:xs) 
    | (func x == True) = Just x
    | (length xs == 0) = Nothing
    | otherwise = find func xs