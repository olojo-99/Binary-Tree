
% insert value T into a binary tree
insert(T, nil, t(T,nil,nil)).
insert(T, t(X, L, R), t(Y, B, C)) :- T < X, insert(T,L,N), (B,Y,C) = (N,X,R).
insert(T, t(X, L, R), t(Y, B, C)) :- T > X, insert(T,R,N), (B,Y,C) = (L,X,N).

% search for value T in a binary tree
search(T, t(T,_,_)).
search(T, t(V,L,_)) :- T < V, search(T,L).
search(T, t(V,_,R)) :- T > V, search(T,R).

% create list X through an inorder traversal of a binary tree
inorder(t(_,L,_),X) :- inorder(L,X).
inorder(t(X,_,_),X).
inorder(t(_,_,R),X) :- inorder(R,X).

% create list X through an preorder traversal of a binary tree
preorder(t(X,_,_),X).
preorder(t(_,L,_),X) :- preorder(L,X).
preorder(t(_,_,R),X) :- preorder(R,X).

% create list X through an postorder traversal of a binary tree
postorder(t(_,L,_),X) :- postorder(L,X).
postorder(t(_,_,R),X) :- postorder(R,X).
postorder(t(X,_,_),X).
