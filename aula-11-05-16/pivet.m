function res = pivet (n)
  res = (-1).^[0:n-1] ./ [1:2:2*n];
  res = sum(res)*4;
end
