

function [t, w] = Euler(f, to, yo ,h, n)
w=[yo];
t=[to];
for i = 1:n
w=[w ; w(i,:)+h*f(t(i), w(i,:))];
t=[t ; t(i)+h];
endfor
endfunction
