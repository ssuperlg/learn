splitLines [] = []
splitLines cs =
    let (pre, suf) = break isLineTerminator cs
    in  pre : case suf of
                ('\r':'\n':rest) -> splitLines rest
                ('\r':rest)      -> splitLines rest
                ('\n':rest)      -> splitLines rest
                _                -> []

isLineTerminator c = c == '\r' || c == '\n'
-- Test
-- *Main> splitLines "a\r\nb\nc\rd"
-- ["a","b","c","d"]
-- *Main> break isLineTerminator "a\r\nb\nc\rd"
-- ("a","\r\nb\nc\rd")

-- *Main> :type unlines
-- unlines :: [String] -> String
-- *Main> unlines ["a","b"]
-- "a\nb\n"
