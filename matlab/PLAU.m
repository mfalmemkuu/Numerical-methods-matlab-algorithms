

function [X,d,L,U,P] = PLAU (A, b)

  U =A;
  P = eye(size(U));
  L = zeros(size(U));
  d = zeros(size(b));
  X = zeros(size(b));

  for i = 1:size(U,2)-1
    for j = i:size(U,1)-1

      L(j+1,i) = U(j+1,i)/U(i,i);
      U(j+1,:) = U(j+1,:) - U(i,:) * (U(j+1,i)/U(i,i));

    endfor
  endfor
L = L + eye(size(L));
Pb = P*b;
for i = 1:size(U,1)
  d(i) = (Pb(i) - (L(i,1:i-1)*d(1:i-1)))/L(i,i);
endfor

for i = size(U,1):-1:1
  X(i) = (d(i) -(U(i,i+1:end)*X(i+1:end)))/U(i,i);
  endfor





endfunction
