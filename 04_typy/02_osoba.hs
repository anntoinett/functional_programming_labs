import Data.List (sortBy)
import Data.Ord (comparing)

data Osoba = Osoba {
    imie:: String, 
    nazwisko:: String, 
    pesel:: String
    } deriving (Show)
    
class Os a where
	sortBySurname :: [a]->[a]

instance Os Osoba where
	sortBySurname = sortBy (comparing nazwisko)

instance Eq Osoba where
	a == b = pesel a == pesel b

instance Ord Osoba where
	compare a b = compare (pesel a) (pesel b)