data MyTree a = Empty | Node a (MyTree a) (MyTree a)
     deriving (Show)

--insert
insert' :: (Ord a) => MyTree a -> a -> MyTree a
insert' Empty x = Node x Empty Empty
insert' (Node r left right) x 
	| r == x = Node r left right
	| r  < x = Node r left (insert' right x)
	| r  > x = Node r (insert' left x) right

empty :: (Ord a) => MyTree a -> Bool
empty Empty = True
empty  _  = False

search :: (Ord a) => (MyTree a) -> a -> Bool
search Empty _ = False
search (Node r left right) x 
	| x == r = True
	| x  < r = search left x 
	| x  > r = search right x

toString :: (Show a) => MyTree a -> String
toString Empty = ""
toString (Node r Empty Empty) = show r ++ ""
toString (Node r left right) = show r ++"("++ toString left ++ "," ++ toString right ++ ")"

leaves :: (Ord a) => MyTree a -> [a]
leaves Empty = []
leaves (Node r Empty Empty) = [r]
leaves (Node r left right) = leaves right ++ leaves left

nnodes :: (Ord a) => MyTree a -> Int
nnodes Empty = 0
nnodes (Node r left right) = (nnodes left) + (nnodes right) + 1

nsum :: (Num a)=>MyTree a-> a
nsum Empty = 0
nsum (Node r left right) = r + (nsum left) + (nsum right)

remove :: (Ord a) => MyTree a -> a -> MyTree a
remove (Node r left right) x
        | r < x = Node r left (remove right x)
        | r > x = Node r (remove left x) right
remove (Node r Empty right) x = right
remove (Node r left Empty) x = left
remove (Node r left right) x = insertt left right
remove Empty _ = Empty

insertt :: (Ord a) => MyTree a -> MyTree a -> MyTree a
insertt x Empty = x
insertt Empty x = x
insertt (Node r left right) (Node x x1 x2) 
        | r == x = Node r left right
        | r < x = Node r left (insertt right (Node x x1 x2))
        | r > x = Node r (insertt left (Node x x1 x2)) right