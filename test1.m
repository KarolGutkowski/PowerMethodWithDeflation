function test1()
type("test1.txt");


A = [1 0 0; 0 2 0; 0 3 0];
tol = 1e-9;

eigenvalues = P2Z35_KGU_PotNormDef(A,tol);
fprintf("Macierz 1. :\n");
disp(A);
fprintf("Wartości własne macierzy:\n");
%% ZAMIEŃ NA WLASNE OBLICZENIE WARTOSCI WLASNYCH
disp(eig(A));
fprintf("Wynik metody:\n");
disp(eigenvalues);


A = [30 0 0 0;0 -100 0 0;0 0 17 0; 0 0 0 365];

eigenvalues = P2Z35_KGU_PotNormDef(A,tol);
fprintf("Macierz 2. :\n");
disp(A);
fprintf("Wartości własne macierzy:\n");
%% ZAMIEŃ NA WLASNE OBLICZENIE WARTOSCI WLASNYCH
disp(eig(A));
fprintf("Wynik metody:\n");
disp(eigenvalues);


A = [13 0 1;0 -100 7;1 0 17];

eigenvalues = P2Z35_KGU_PotNormDef(A,tol);
fprintf("Macierz 2. :\n");
disp(A);
fprintf("Wartości własne macierzy:\n");
%% ZAMIEŃ NA WLASNE OBLICZENIE WARTOSCI WLASNYCH
disp(eig(A));
fprintf("Wynik metody:\n");
disp(eigenvalues);

end

