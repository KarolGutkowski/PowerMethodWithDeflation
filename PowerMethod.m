function [eigenvector, eigenvalue] = PowerMethod(A,tol)
%POWERMETHOD Summary of this function goes here
%   Detailed explanation goes here
iterationLimit = 1e3;

v1 = randn(length(A),1);
v1 = v1 / norm(v1,2);

iter = 0;
canContinue = true;

while canContinue
    v0 = v1;
    v1 = A* v1;
    v1 = v1 / norm(v1,2);
    iter=iter+1;
    if((condition(v0,v1) < tol) || (iter >= iterationLimit))
        canContinue = false;
    end
end

if(iter == iterationLimit)
    eigenvector = NaN;
    eigenvalue = NaN;
else
    eigenvector = v1;
    eigenvalue = v1'*A*v1;
end

end

