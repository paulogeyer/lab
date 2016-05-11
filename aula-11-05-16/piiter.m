function res = piiter (n)
  res = 0;

  for i = 0:n
    res = res + (-1)^(i)/(2*i+1);
  end

  res = res*4;
end
