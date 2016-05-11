for i = 0:1000:10000
  disp('i = '), disp(i);
  disp('piiter');
  tic;
  piiter(i);
  disp(toc);

  disp('pivet');
  tic;
  pivet(i);
  disp(toc);
end
