-- pro 3 index
-- index (x:xs) idx =
--       if idx  >  1
--             index (xs) (idx - 1)
--       else if idx < 1
--             then []
--       else [x]

-- pro5 reverse
reserve (x:xs) = reserve(xs) ++ [x]
reserve [] = []

-- pro 7
compress (x:xs) = 
    if x == 
        then x ++ compress(xs)
    else
        compress(xs)
compress [] = []