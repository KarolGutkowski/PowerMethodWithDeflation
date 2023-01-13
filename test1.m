function test1()
type("test1.txt");


A = [1 0 0; 0 2 0; 0 0 3];
tol = 1e-9;

eigenvalues = P2Z35_KGU_PotNormDef(A,tol);
fprintf("Macierz 1. :\n");
disp(A);
fprintf("Wartości własne macierzy:\n");
%% ZAMIEŃ NA WLASNE OBLICZENIE WARTOSCI WLASNYCH
lambdas = [1;2;3];
disp(sort(lambdas,"descend"));
fprintf("Wynik metody:\n");
disp(eigenvalues);
pause();

A = [30 0 0 0;0 -100 0 0;0 0 17 0; 0 0 0 365];

eigenvalues = P2Z35_KGU_PotNormDef(A,tol);
fprintf("Macierz 2. :\n");
disp(A);
fprintf("Wartości własne macierzy:\n");
%% ZAMIEŃ NA WLASNE OBLICZENIE WARTOSCI WLASNYCH
lambdas = [365;-100;30;17];
disp(lambdas);
fprintf("Wynik metody:\n");
disp(eigenvalues);
pause();

v1 = [1;1;1];
v2 = [1;0;3];
v3 = [7;1;1];
V = [v1 v2 v3];
D = zeros(3);
lambda1 = 2; 
lambda2 = 3; 
lambda3 = 15;
D(1,1) = lambda1;
D(2,2) = lambda2;
D(3,3) = lambda3;

A = eigenvectorsToMatrixGen(V,D);

eigenvalues = P2Z35_KGU_PotNormDef(A,tol);
fprintf("Macierz 2. :\n");
disp(A);
fprintf("Wartości własne macierzy:\n");
%% ZAMIEŃ NA WLASNE OBLICZENIE WARTOSCI WLASNYCH
disp(sort(diag(D),"descend"));
fprintf("Wynik metody:\n");
disp(eigenvalues);

end

