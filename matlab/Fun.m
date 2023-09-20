

function [y] = Fun (x)
  L=length(x);
  y=zeros(1:L);
  for i =1:L
    y(1,i) = 1/sqrt(x(1,i)^2+4);
  endfor

endfunction
