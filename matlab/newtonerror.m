

function y = newtonerror (f)
  syms x
 b = diff(f(x),x,1);
 y = b(2);
endfunction
