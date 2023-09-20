

function [y,n] = bissection (f, a, b, tol)

  n = 0;
  while abs((b-a)/2)>tol
    c=(a+b)/2;
    if f(a)*f(c)<0
      b=c;
    else
      a=c;
    endif
    n++;
  endwhile
y=c;
endfunction
