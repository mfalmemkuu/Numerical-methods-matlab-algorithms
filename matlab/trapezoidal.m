

function [I] = trapezoidal (a,b,n)
  h = (b-a)/n;
  x = a:h:b;
  L=length(x);
  F=zeros(1,L);
  for i = 1:L
    F(i) = log(x(1,i))
  endfor
I = h*(F(1)+F(n+1))/2+h*sum(F(2:n));

endfunction
