function users = similar(critics, name)
  users = struct("name",{},"similarity",{});
  len = length(critics);
  v = zeros(1,len);
  i = find_critic(critics,name);
  
  for j = 1:len
    users(j).name = critics(j).name;
    if j == i
      users(j).similarity = 1;
    else
      users(j).similarity = sim_pearson(critics(i).ratings, critics(j).ratings);
    end
  end

  [_, order] = sort([users(:).similarity],"descend");
  users = users(order);
end
