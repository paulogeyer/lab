lst = [1, 2, 3, 4, 5]
lst2 = [5, 4, 3, 2, 1]

pearson :: Num a => [a] -> [a] -> a
pearson xs ys = num/den
  where n = length xs
        num2 = 2 :: Num a => a
        sum1 = sum xs
        sum2 = sum ys
        sum1Sq = sum $ map (**num2) xs
        sum2Sq = sum $ map (**num2) ys
        pSum = (*) xs ys
        num = (-) $ pSum (sum1*sum2/n)
        den = sqrt $ ((*) (sum1Sq - (sum1**num2)/n) (sum2Sq - (sum2**num2)/n))
