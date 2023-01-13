function [D] = DeflateGivens(A,v1)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here


for j=1:length(v1)-1
    G = zeros(2);
    x1 = v1(1); 
    x2 = v1(j+1);
    if(x1 == 0 || x2 == 0)
        r = 0;
    else
        r = -x1/x2;
    end
    s = 1/sqrt(1+r*r);
    c= s*r;
    G(1,1) = c;
    G(1,2) = -s;
    G(2,1) = s;
    G(2,2) = c;
    vRotate = [v1(1);v1(j+1)];
    vRotate = G*vRotate;
    v1(1) = vRotate(1);
    v1(j+1) = vRotate(2);

    % wyciagniacie pierwszego i j+1-tego wiersza od konca
    % zapisanie i w macierzy do "przerotowania"
    r1 = A(1,:);
    rj = A(j+1,:);
    toRotate = [r1;rj];
    toRotate = G*toRotate;
    A(1,:) = toRotate(1,:);
    A(j+1,:) = toRotate(2,:);


    c1 = A(:,1);
    cj = A(:,j+1);
    toRotate = [c1 cj];
    toRotate = toRotate*G';
    A(:,1) = toRotate(:,1);
    A(:,j+1) = toRotate(:,2);

end


D = A;
end

