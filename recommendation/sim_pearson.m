function r = sim_pearson(u, v)
  n = length(u);
  sum1 = sum(u);
  sum2 = sum(v);

  sum1Sq = sum(u.^2);
  sum2Sq = sum(v.^2);

  pSum = u*v';

  num = pSum-((sum1*sum2)/n);
  den = sqrt((sum1Sq-(sum1**2)/n)*(sum2Sq-(sum2**2)/n));

  if den == 0
    r = 0;
  else
    r = num/den;
  end
end
