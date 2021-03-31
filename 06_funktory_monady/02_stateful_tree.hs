-- Tutaj ma się znaleźć zadanie numer 3. 
-- Trzy operacje oparte o monadę State
-- 1. insert
-- 2. search
-- 3. remove
-- Proszę dopisać w Main jakiś przykład użycia operacji w notacji `do`

data MyTree a = Empty | Node a (MyTree a) (MyTree a)

treeInsertWithState :: (Ord a) => a -> State (MyTree a) ()
treeInsertWithState elem = State $ \old -> ((), insertt elem old)


treeRemoveWithState :: (Ord a) => a -> State (MyTree a) a
treeRemoveWithState elem = state $ \old -> (elem, remove elem old)

treeSearchState :: (Ord a) => a -> State (MyTree a) Bool
treeSearchState elem = state $ \old -> (search elem old, old)

myTree = Node 3 (Node 1 Empty (Node 2 Empty Empty)) (Node 4 Empty Empty)

{-- przetestowanie--}
(runState (treeInsertWithState 2)) myTree