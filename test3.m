function test3()
type("test3.txt");

tol = 1e-9;
A = [130 0 0 0; 0 17 0 0; 0 0 8 0; 0 0 0 -8];

eigenvalues = P2Z35_KGU_PotNormDef(A,tol);
fprintf("Macierz 2. :\n");
disp(A);
fprintf("Wartości własne macierzy:\n");
%% ZAMIEŃ NA WLASNE OBLICZENIE WARTOSCI WLASNYCH
disp(sort(eig(A),'descend'));
fprintf("Wynik metody:\n");
disp(eigenvalues);
end

