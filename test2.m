function test2()
type("test2.txt");

tol = 1e-9;

v1 = [1;2;3];
v2 = [1;0;0];
v3 = [5;6;2];
V = [v1 v2 v3];
D = zeros(3);
lambda1 = 20;
lambda2 = -7;
lambda3 = 7;
D(1,1) = lambda3;
D(2,2) = lambda2;
D(3,3) = lambda1;
A = eigenvectorsToMatrixGen(V,D);

eigenvalues = P2Z35_KGU_PotNormDef(A,tol);
real_eigens = [lambda1;lambda2;lambda3];

fprintf("Macierz 2. :\n");
disp(A);
fprintf("Wartości własne macierzy:\n");
disp(real_eigens);
%% ZAMIEŃ NA WLASNE OBLICZENIE WARTOSCI WLASNYCH
%disp(sort(eig(A),'descend'));
%fprintf("Wynik metody:\n");
%disp(eigenvalues);
%errors = abs(eigenvalues -sort(eig(A),'descend'));
%fprintf("Tolerancja = %d\n",tol);
%fprintf("Błędy:\n");
%disp(errors);
fprintf("Wynik metody\n");
disp(eigenvalues);
pause();
%% ZAMIEŃ NA WLASNE OBLICZENIE WARTOSCI WLASNYCH



fprintf("\n--------------------------------------------------------------\n");
tol = 1e-3;
A = [13.111 0 0 0; 0 3.3333 0 0; 0 0 6.5555 0; 0 0 0 341.231312];
eigenvalues = P2Z35_KGU_PotNormDef(A,tol);
real_eigens = [341.231312;13.111;6.5555;3.3333];
fprintf("Macierz 2.:\n");
disp(A);
fprintf("Wartości własne    |     Wynik metody\n");
%% ZAMIEŃ NA WLASNE OBLICZENIE WARTOSCI WLASNYCH
for i =1:4
    if(i<=length(eigenvalues))
        fprintf("  %d     |     %d \n", real_eigens(i), eigenvalues(i));
    else
        fprintf("  %d\n", real_eigens(i));
    end
end
%disp([sort(eig(A),'descend') eigenvalues]);

%errors = abs(eigenvalues -sort(eig(A),'descend'));
%fprintf("Błędy:\n");
%disp(errors);



end

