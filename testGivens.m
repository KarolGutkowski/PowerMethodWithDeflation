function testGivens()
% Projekt 2, zadanie 35
% Karol Gutkowski, 320691
% 
% funkcja testująca metode deflacji Givensa

type("testGivens.txt");
v1 = [1;1;1];
v2 = [1;0;3];
v3 = [7;1;1];
V = [v1 v2 v3];
D = zeros(3);
lambda1 = 2; 
lambda2 = 3; 
lambda3 = 15;
lambdas = [lambda1;lambda2;lambda3];
D(1,1) = lambda1;
D(2,2) = lambda2;
D(3,3) = lambda3;
A = eigenvectorsToMatrixGen(V,D);
fprintf("Macierz 1. przed obrotem:\n");
disp(A);
fprintf("Wartosci wlasne macierzy:\n");
disp(sort(lambdas,"descend"));
fprintf("Macierz po deflacji:\n");
A2 = DeflateGivens(A,v3);
disp(A2);

V = zeros(2);
while(length(V)~=4 && det(V)==0)
    A = randi(4,4);
    V = orth(A);
end

lambda1 = 100;
lambda2 = 200;
lambda3 = 5;
lambda4 = 12;
lambdas = [lambda1;lambda2;lambda3;lambda4];
D  = zeros(4);
D(1,1) = lambda1;
D(2,2) = lambda2;
D(3,3) = lambda3;
D(4,4) = lambda4;
A = eigenvectorsToMatrixGen(V,D);
disp(sort(lambdas,"descend"));
v2 = V(:,2);
B = DeflateGivens(A,v2);
disp(B)




end

