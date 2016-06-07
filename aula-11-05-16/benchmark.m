ns = [];
piiters = [];
pivets = [];

for i = 0:1000:100000
  % calcula o tempo para piiter com i parcelas de pi
  i
  ns(end+1) = i;

  tic;
  piiter(i);
  tpiiter = toc
  piiters(end+1) = tpiiter;

  % calcula o tempo para pivet com i parcelas de pi
  tic;
  pivet(i);
  tpivet = toc
  pivets(end+1) = tpivet;

  m = (tpivet / tpiiter);
  m
end
