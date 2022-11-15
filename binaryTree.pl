% insert value T into a binary tree
insert(T, nil, t(T,nil,nil)).
insert(T, t(X, L, R), t(Y, B, C)) :- T < X, insert(T,L,N), (B,Y,C) = (N,X,R).
insert(T, t(X, L, R), t(Y, B, C)) :- T > X, insert(T,R,N), (B,Y,C) = (L,X,N).


% search for value T in a binary tree
search(T, t(T,_,_)).
search(T, t(V,L,_)) :- T < V, search(T,L).
search(T, t(V,_,R)) :- T > V, search(T,R).


% create list X through an inorder traversal of a binary tree
inorder(nil, []). % empty list for empty tree
inorder(t(T, L, R), X) :- inorder(L, L1), inorder(R, R1), append(L1, [T|R1], X).


% create list X through an postorder traversal of a binary tree
postorder(nil, []). % empty list for empty tree
postorder(t(T, L, R), X) :- postorder(L, L1), postorder(R, R1),
							append(R1, [T], Temp), append(L1, Temp, X).


% create list X through an preorder traversal of a binary tree
preorder(nil, []). % empty list for empty tree
preorder(t(T, L, R), X) :- preorder(L, L1), preorder(R, R1), append([T|L1], R1, X).


/* -----------------------
		TESTING
------------------------ */

/*
t(10, t(5, t(3, nil, nil), t(6, nil, nil)), t(20, nil, nil))

inorder(t(10, t(5, t(3, nil, nil), t(6, nil, nil)), t(20, nil, nil)), List).
preorder(t(10, t(5, t(3, nil, nil), t(6, nil, nil)), t(20, nil, nil)), List).
postorder(t(10, t(5, t(3, nil, nil), t(6, nil, nil)), t(20, nil, nil)), List).
*/
