

function [y,n] = falseposition (f, a, b, tol)
  n = 0;
  while(abs((b-a)/2)>tol)
       c = (a*f(b)-b*f(a))/(f(b)-f(a));
      if f(a)*f(c)<0
      b=c;
    else
      a=c;
    endif
    n++;
  endwhile
y = c;
endfunction
