
function [L, U, P] = LU (A)
  U =A;
  P = eye(size(U));
  L = zeros(size(U));

  for i = 1:size(U,2)-1
    for j = i:size(U,1)-1

      L(j+1,i) = U(j+1,i)/U(i,i);
      U(j+1,:) = U(j+1,:) - U(i,:) * (U(j+1,i)/U(i,i));

    endfor
  endfor
L = L + eye(size(L));
endfunction
