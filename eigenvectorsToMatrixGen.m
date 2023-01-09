function [M] = eigenvectorsToMatrixGen(V,D)
M = V*D*V^-1;
end

