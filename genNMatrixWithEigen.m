function [A] = genNMatrixWithEigen(n)

V = zeros(1);
B = randi(n,n);
while(size(V,1)~=size(B,1)&& size(V,2)~=size(B,2)  && det(V)==0)
    B  = randi(n,n);
    V = orth(B);
end
D = zeros(n);
for i =1:n
    D(i,i) = i*10;
end
A = eigenvectorsToMatrixGen(V,D);
disp(sort(eig(A),"descend"));

end

