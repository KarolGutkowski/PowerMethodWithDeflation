function [L] = P2Z35_KGU_PotNormDef(A,tol)
% Projekt 2, zadanie 35
% Karol Gutkowski, 320691
% 
% Wyznaczanie przybliżeń wartości własnych metodą potęgową z normowaniem 
% 
% Funkcja wyznacza k <= length(A) przybliżeń 
% wartości własnych macierzy A dla których zachodzi 
% |lambda_1| > |lambda_2| > ... > |lambda_k|. 
% Wykorzystuje ona metodę potęgową do wyznaczania wektorów własnych 
% (wektor początkowy jest losowy) i metody deflacji z obrotami Givens'a. 
% Wyjście z pętli metody potęgowej pod wpływem przekroczenia z góry ustalonej 
% wartości iterationLimit powoduje zakończenie programu i zwrócenie 
% dotychczas obliczonych wartości własnych. Do wyjścia z programu dochodzi 
% także po spełnieniu poniższego warunku stopu:
% ||((x_i)^(k+1))^-1|(x_i)^(k+1)|x^(k+1)-((x_i^k)^-1)|(x_i)^(k)|x^k||<=tol
% gdzie
% x^k - to k-ty wektor przyblizeń wartości własnych, 
% (x_i)^k - to największa co do modułu wartość w k-tym wektorze przybliżeń
%
% WEJŚCIE 
%   A   - macierz wartości rzeczywistych
%   tol - tolerancja przy warunku stopu
% 
% WYJŚCIE
%   L - wektor przybliżeń wartości własnych macierzy A

% remove before sending
% eigenvector = randn(length(A),1);
% eigenvector = eigenvector / norm(eigenvector,2);
% 
% for i = 1:100
%     eigenvector = A* eigenvector;
%     eigenvector = eigenvector / norm(eigenvector,2);
% end
% newEigenvalaue = eigenvector'*A*eigenvector;
% 
% fprintf("Eigenvalue=%d\n", newEigenvalaue);
n = length(A);
L = zeros(n,1);
curr_vector = 0;

i = 1;
tic;
while (~isnan(curr_vector(1)) && i <= n)
    [curr_vector] = PowerMethod(A,tol);
    A = DeflateGivens(A,curr_vector);
    curr_lambda = A(1,1);
    if(~isnan(curr_vector(1)))
        L(i) = curr_lambda;
    else
        break;
    end
    A = A(2:end,2:end);
    i=i+1;
end
toc;
L = L(1:i-1);
%fprintf("Iter=%d\n",i);

end


