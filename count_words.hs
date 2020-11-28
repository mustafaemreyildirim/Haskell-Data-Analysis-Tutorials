main :: IO ()
main = do
 input <- readFile "input.txt" --it is a Monad that let I/O stream get the string out.
 print $ countWords input


countWords :: String -> [Int]
countWords input = map (length.words) (lines input)