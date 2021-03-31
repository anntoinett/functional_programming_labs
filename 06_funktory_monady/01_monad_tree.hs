-- Dwa pierwsze  zadania mają znaleźć się w tym pliku
-- 1. Implementacja Functora dla drzewa
-- 2. Implementacja Monady dla drzewa
-- Dodatkowo można tu zrealizować dodatkowe zadanie 4.

data Mytree a = Empty | MyLeaf a | MyNode (Mytree a) (Mytree a)

instance Functor Mytree where
   fmap f Empty = Empty
   fmap f (MyLeaf x) = MyLeaf (f x)
   fmap f (MyNode x y) = MyNode (fmap f x) (fmap f y)

instance Monad Mytree where
   return = MyLeaf
   Empty >>= f = Empty
   (MyLeaf x) >>= f = f x
   (MyNode x y) >>= f = MyNode (x >>= f) (y >>= f)
