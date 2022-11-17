# Binary Trees in Prolog vs Haskell

These are implementations of binary trees in Prolog (logical) and Haskell (functional).
The user can *insert* an integer, *search* for an integer, or list the nodes in order (*preorder, inorder, postorder*).

#

## Prolog

Sample Prolog tree:

`t(10, t(5, t(3, nil, nil), t(6, nil, nil)), t(20, nil, nil)).`

*(paste into SWI-Prolog with middle mouse button)*
### Example Test Cases:
#### Search
    search(6, t(10, t(5, t(3, nil, nil), t(6, nil, nil)), t(20, nil, nil))).
    % Searches for a value 6 in the binary tree
    % returns:
    true.

#### Insert
    insert(21, t(10, t(5, t(3, nil, nil), t(6, nil, nil)), t(20, nil, nil)), X).
    % Will insert the value 21 into the tree
    % returns:
    X = t(10, t(5, t(3, nil, nil), t(6, nil, nil)), t(20, nil, t(21, nil, nil)))

#### Inorder 
    inorder(t(10, t(5, t(3, nil, nil), t(6, nil, nil)), t(20, nil, nil)), List).
    % Returns a list of the values in increasing order
    % returns:
    List = [3, 5, 6, 10, 20].

#### Preorder
    preorder(t(10, t(5, t(3, nil, nil), t(6, nil, nil)), t(20, nil, nil)), List).
    % Starts with the root, then traverses the left and then right subtrees
    % returns: 
    List = [10, 5, 3, 6, 20].

#### Postorder
    postorder(t(10, t(5, t(3, nil, nil), t(6, nil, nil)), t(20, nil, nil)), List).
    % Starts with the left subtree, then the right, and then finishes at the root
    % returns:
    List = [3, 6, 5, 20, 10].  
   

## Haskell

The Haskell implementation has 2 sample trees included in the code:   
    `tree1 = Root 5 (Root 1 (Empty) (leaf 3)) (leaf 7)`  
And  
    `tree2 = Root 8 (Root 3 (leaf 1) (Root 6 (leaf 4) (leaf 7))) 
                (Root 10 (Empty) (Root 14 (leaf 13) (Empty)))`

### Example Test Cases:

#### Search
    search 3 tree1
    -- Searches for value 3 in tree1
    -- returns:
    True

#### Insert
    insert 40 tree1
    -- Will insert the value 40 into the tree
    -- returns:
    Root 5 (Root 1 Empty (Root 3 Empty Empty)) (Root 7 Empty (Root 40 Empty Empty))

#### Inorder
    inorder tree2
    -- Returns a list of the values in increasing order
    -- rfeturns:
    [1,3,4,6,7,8,10,13,14]

#### Preorder
    preorder tree2
    -- Starts with the root, then traverses the left and then right subtrees
    -- returns:
    [8,3,1,6,4,7,10,14,13]

#### Postorder
    postorder tree2
    -- Starts with the left subtree, then the right, and then finishes at the root
    -- returns:
    [1,4,7,6,3,13,14,10,8]

# Executing Programs:

## Prolog
In order to run binaryTree.pl, you need to install SWI-Prolog, which can be found [here](https://www.swi-prolog.org/Download.html).

Once it is installed, right click on `binaryTree.pl` and select "open with", then select SWI-Prolog.

## Hakell
To run the haskell version, you must install GHC which can be found [here](https://www.haskell.org/ghcup/). Follow the instrutions on the website.  
Once installed, open your terminal and type `ghci`. Once open, go to the directory with the file (you can do this using `:cd <directory>`), and then load the file using `:load binaryTree.hs`.'