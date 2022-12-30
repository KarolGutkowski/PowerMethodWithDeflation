function test2()
type("test2.txt");

tol = 1e-2;
A = [13.1111 0 0; 0 3.3333 0 ; 0 0 6.5555];

eigenvalues = P2Z35_KGU_PotNormDef(A,tol);
fprintf("Macierz 2. :\n");
disp(A);
fprintf("Wartości własne macierzy:\n");
%% ZAMIEŃ NA WLASNE OBLICZENIE WARTOSCI WLASNYCH
disp(sort(eig(A),'descend'));
fprintf("Wynik metody:\n");
disp(eigenvalues);

errors = abs(eigenvalues -sort(eig(A),'descend'));
fprintf("Błędy:\n");
disp(errors);


tol = 1e-3;
A = [13.1111 0 0 0; 0 3.3333 0 0; 0 0 6.5555 0; 0 0 0 341.231312];

eigenvalues = P2Z35_KGU_PotNormDef(A,tol);
fprintf("Tol = %d\n", tol);
fprintf("Macierz 2.:\n");
disp(A);
fprintf("Wartości własne    |     Wynik metody\n");
%% ZAMIEŃ NA WLASNE OBLICZENIE WARTOSCI WLASNYCH
real_eigens = sort(eig(A),'descend');
for i =1:4
    fprintf("  %d     |     %d\n", real_eigens(i), eigenvalues(i));
end
%disp([sort(eig(A),'descend') eigenvalues]);

errors = abs(eigenvalues -sort(eig(A),'descend'));
fprintf("Błędy:\n");
disp(errors);



end

