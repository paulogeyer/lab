function id = find_critic(critics, name)
  for i = 1:length(critics)
    if strcmp(critics(i).name, name)
      id = i;
      break
  end
end
