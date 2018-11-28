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

-- back content(hui wen)
backContent (x:xs) = [x] ++ backContent(xs) ++ [x]
backContent [] = [] 

-- intersperse "," ["a","b"] -> "a,b"
intersperse symbol (x:xs) = 
      if xs == []
            then x
      else 
            x ++ symbol ++ intersperse symbol xs
intersperse symbol [] = []

--考虑三个二维的点 a, b，和c．如果我们观察沿着线段ＡＢ（由a,b节点组成）和线段ＢＣ（由b,c节点组成）
--形成的角度，它或者转向（turn）左边，或者转向右边，
--或者组成一条直线．定义一个 Direction（方向）的数据类型反映这些可能的情况

data direction = direction LEFT | RIGHT | STRAIGHT deriving(Show)