# Binary Trees in Prolog vs Haskell

These are implementations of binary trees in Prolog (logical) and Haskell (functional).
The user can *insert* an integer, *search* for an integer, or list the nodes in order (*preorder, inorder, postorder*).

#

## Prolog

Sample Prolog tree:

**t(10, t(5, t(3, nil, nil), t(6, nil, nil)), t(20, nil, nil)).**

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
    % Returns a list of the nodes in increasing order
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