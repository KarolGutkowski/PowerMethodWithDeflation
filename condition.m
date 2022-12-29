function [val] = condition(v0,v1)
% sprawdzenie warunku
% dodaj opis elo
% i - indeks najwiekszego elementu
% vi_i - wartosc najwiekszego modulem elementu

[v0_i, i] = max(abs(v0),[],"all");
val = norm(v0*v0_i/v0(i)-v1*abs(v1(i))/v1(i));
end

