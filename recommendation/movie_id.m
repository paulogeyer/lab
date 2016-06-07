function id = movie_id (s, movieName)
  for i = 1:length(s)
    if strcmp(s(i).name, movieName)
      id = i;
      break
    end
  end
end
