% Three Sums
% Hannah Roach 
%******************************************************%
% N = the target sum
% [Head|Tail] is the list to search
% T = 0 ; T is a variable. Set this value to 0. 
% X = 0 ; X is a variable. Set this to 0.
% Count = 3 ; Limits search to 3 elements in the list. 
%******************************************************%
subset(0,0,[],[],0, 0,3).
subset(N, [Head | Tail], T, X, Count) :-	
    Count > 0,  
    C1 is Count - 1,
    S1 is X,
    NewSum is S1 + Head,
    ((NewSum == N, C1 == 0);
    subset(N, Tail,[Head|T], NewSum, C1)).

subset(N, [_| Tail], T, X, Count) :- 
	Count>0,
    subset(N, Tail, T, X, Count). 

%******************************************************%
%Test Cases 
%******************************************************%
%subset(11, [1,3,5,7], 0, 0,3).
%true

%subset(10, [1,3,5,7], 0, 0,3).
%false

%subset(19, [7, 1, 10, 3, 8, 2] , 0, 0,3).
%true

%subset(3, [1, 1, 1, 1] , 0, 0,3).
%true

%subset(3, [2, 2, 2, 2] , 0, 0,3).
%false

%subset(3, [2, 2, 2, 2] , 0, 0,3).
%false

%subset(4, [2, 2, 0, 2] , 0, 0,3).
%true