function powTest()
% Projekt 2, zadanie 35
% Karol Gutkowski, 320691
% funkcja testujaca implementacje metody potegowej

v1 = [1;2;3];
v2 = [1;0;0];
v3 = [0;0;1];
V = [v1 v2 v3];
D = zeros(3);
D(1,1) = 7;
D(2,2) = 1;
D(3,3) = 9;
A = eigenvectorsToMatrixGen(V,D);
v = PowerMethod(A,1e-3);

fprintf("eigen  |   approx\n");
disp([v3 v]);

end

