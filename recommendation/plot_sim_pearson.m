function plot_sim_pearson(movies, u, v)
  c = sim_pearson(u.ratings, v.ratings);
  % ezplot(@(x) (x*c)+2, [0:15])
  fplot(@(x) c*x+2, [0,15])
  legend(["Pearson coefficient = " mat2str(c)])
  xlabel(v.name)
  ylabel(u.name)
  hold on
  for i = 1:length(movies)
    plot(u.ratings(i), v.ratings(i))
    text(u.ratings(i), v.ratings(i), movies(i).name)
  end
  grid on
  hold off
end
