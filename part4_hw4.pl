:-style_check(-singleton).

%element
element(E,S) :- member(E,S).



%These are helper predicates for union.
common(X,Y):-  foreach(element(I,X),element(I,Y)).
commonFlag(X,Y,Z):- foreach(element(I,Z),element(I,X);element(I,Y)).           

%union
union(S1,S2,S3):-common(S1,S3), 
                 common(S2,S3),
                 commonFlag(S1,S2,S3).

%These are helper predicates for intersection.
overlap(X,Y,Z):-foreach((element(I,X),element(I,Y)),element(I,Z)).
intersectFlag(X,Y,Z):- foreach(element(I,Z),(element(I,X),element(I,Y))).

%intersection
intersect(S1,S2,S3):-overlap(S1,S2,S3),
                     intersectFlag(S1,S2,S3).  

%equivalent
equivalent(S1,S2):-S1==S2.


              

                 

          

