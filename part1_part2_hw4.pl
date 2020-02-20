:-style_check(-singleton).
%Facts.
flight(istanbul,rize).
flight(istanbul,izmir).
flight(istanbul,ankara).
flight(istanbul,van).
flight(istanbul,gaziantep).
flight(istanbul,antalya).
flight(izmir,ısparta).
flight(izmir,istanbul).
flight(ısparta,izmir).
flight(ısparta,burdur).
flight(burdur,ısparta).
flight(edirne,edremit).
flight(edremit,edirne).
flight(edremit,erzincan).
flight(erzincan,edremit).
flight(antalya,istanbul).
flight(antalya,konya).
flight(antalya,gaziantep).
flight(konya,ankara).
flight(konya,antalya).
flight(gaziantep,antalya).
flight(gaziantep,istanbul).
flight(ankara,istanbul).
flight(ankara,konya).
flight(ankara,van).
flight(van,istanbul).
flight(van,ankara).
flight(van,rize).
flight(rize,istanbul).
flight(rize,van).


distance(istanbul,rize,967.79).
distance(istanbul,izmir,328.80).
distance(istanbul,ankara,351.50).
distance(istanbul,van,1262.37).
distance(istanbul,gaziantep,847.42).
distance(istanbul,antalya,482.75).
distance(izmir,ısparta,308.55).
distance(izmir,istanbul,328.80).
distance(ısparta,izmir,308.55).
distance(ısparta,burdur,24.60).
distance(burdur,ısparta,24.60).
distance(edirne,edremit,914.67).
distance(edremit,edirne,914.67).
distance(edremit,erzincan,736.34).
distance(erzincan,edremit,736.34).
distance(antalya,istanbul,482.75).
distance(antalya,konya,192.28).
distance(antalya,gaziantep,592.33).
distance(konya,ankara,227.34).
distance(konya,antalya,192.28).
distance(gaziantep,antalya,592.33).
distance(gaziantep,istanbul,847.42).
distance(ankara,istanbul,351.50).
distance(ankara,konya,227.34).
distance(ankara,van,920.31).
distance(van,istanbul,1262.37).
distance(van,ankara,920.31).
distance(van,rize,373.01).
distance(rize,istanbul,967.79).
distance(rize,van,373.01).


% Finds if there is a route between given X,Y.

route(X,Y):-flight(X,A),
          flight(B,Y),X\=Y,
          (flight(A,B);A==B).


        

%Finds distance between 2 cities.
sroute(A,B,C):-distance(A,B,C).
sroute(A,B,C):- distance(A,Z,D1),
                distance(Z,B,D2),
                C is D1+D2.

               


                
               





                    

