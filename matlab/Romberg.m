

function [IR] = Romberg (Fun, a, b, Ni, levels)

  for i=1:(levels+1)
    nsub = Ni*2^(i-1)
    h=(b-a)/nsub;
    x=a:h:b;
    F=Fun(x);
    IR(i,1) = h*(F(1)+F(nsub+1))/2+h*sum(F(2:nsub));
  endfor

  for j = 2:(levels+1)
    for i = 1:(levels-j+2)
      IR(i,j) = ((4^(j-1))*(IR(i+1,j-1))-(IR(i,j-1)))/((4^(j-1))-1);
    endfor
  endfor



endfunction
