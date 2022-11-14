-- data type for a binary tree
data BT t = Empty | Root Int (BT t) (BT t)
                    deriving (Eq, Ord, Show)

-- Can simply Roots with both Empty children to leaf
leaf x = Root x Empty Empty


-- add node to binary tree
insert :: Int -> BT t -> BT t
insert a Empty = leaf a

insert x (Root a left right)
    | x < a = Root a (insert x left) right
    | otherwise = Root a left (insert x right)


-- Search a binary tree for a particular value
search :: BT t -> Int -> Bool
search Empty _ = False
search (Root v left right) x
    | x == v = True
    | x < v = search left x
    | x > v = search right x


-- inorder traversal
inorder :: BT t -> [Int]
inorder Empty = []
inorder (Root x left right) = (inorder left) ++ [x] ++ (inorder right)


-- postorder traversal
postorder :: BT t -> [Int]
postorder Empty = []
postorder (Root x left right) = (postorder left) ++ (postorder right) ++ [x]


-- preorder traversal
preorder :: BT t -> [Int]
preorder Empty = []
preorder (Root x left right) = [x] ++ (preorder left) ++ (preorder right)


--------------------
--    TESTING
--------------------

tree1 = Root 5 (Root 1 (Empty) (leaf 3))
        (leaf 7)

