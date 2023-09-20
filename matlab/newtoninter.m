clear;
clc;
close all;

xi = [1 2 3 4];
yi = [-4.1 -7.9 -5.1 28.9];


n = length(xi);


for i = 1:n-1
  col(i,1) = (yi(i+1)-yi(i))/(xi(i+1)-xi(i));
end

for j = 2:n-1
  for k = 1:n-j
    col(k,j) = (col(k+1,j-1)-col(k,j-1))/(xi(k+j)-xi(k));
  endfor
end

A(1) = yi(1);
for m = 2:n
  A(m) = col(1,m-1);
end

syms x
B = sym(ones(n-1,1));
S = sym(zeros(n,1));
B(1) = (x-xi(1));

for m = 2:length(A)-1
  B(m) = B(m-1)*(x-xi(m));
end

for p = 2:length(A)
  S(p) = A(p)*B(p-1);
end

S= sum(S) + A(1);
expand(S)
