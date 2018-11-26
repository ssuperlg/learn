foo = let a = 1
      in let b = 2
          in a+b

lend amount balance = if amount < reserve * 0.5
                      then Just newBalance
                      else Nothing
    where reserve = 50
          newBalance = balance - amount 

pluralise :: String -> [Int] -> [String]
pluralise word counts = map plural counts
        where plural 0 = "no" ++ word ++"s"
              plural 1 = "one" ++ word
              plural n = show n ++ " " ++ word ++ "s"