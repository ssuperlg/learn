foo = let a = 1
      in let b = 2
          in a+b

lend amount balance = if amount < reserve * 0.5
                      then Just newBalance
                      else Nothing
    where reserve = 200
          newBalance = balance - amount 

pluralise :: String -> [Int] -> [String]
pluralise word counts = map plural counts
        where plural 0 = "no" ++ word ++"s"
              plural 1 = "one" ++ word
              plural n = show n ++ " " ++ word ++ "s"

 
bar = let a = 1
          b = 2
          c = 3
      in a + b + c

foo2 = let { a = 1;b = 2;
            c = 3 }
            in a + b + c

data Fruit = Apple | Orange
            deriving(Show)

betterFruit f = case f of
                  "apple"  -> Apple
                  "orange" -> Orange
      
lend3 amount balance
      | amount <= 0           = Nothing
      | amount > reserve * 0.5= Nothing
      | otherwise             = Just newBalance
      where reserve = 100
            newBalance = balance - amount

-- count Number List length
countLength (x:xs) = 1 + countLength(xs)
countLength [] = 0

countList (x:xs) = x + countList(xs)
countList [] = 0

avgList (x:xs) = countList(x:xs) / countLength(x:xs)
avgList [] = 0

-- pro 3 index
index (x:xs) idx =
      if idx  >  1
            index (xs) (idx - 1)
      else if idx < 1
            then []
      else [x]

-- pro5 reverse
