function sim = plot_similarity(critics, name)
  sim = similar(critics, name)

  figure(1);
  bar([sim.similarity]);
  set(gca, 'Xticklabel',{sim.name})
end
