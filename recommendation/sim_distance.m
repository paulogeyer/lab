function r = sim_distance (u, v)
  squares = (u-v).^2;
  r = 1/(sum(squares)+1);
end
