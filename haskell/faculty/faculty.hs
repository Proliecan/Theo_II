main :: IO ()
main = do
    print "Please enter a number: "
    input <- getLine
    let n = read input
    let r = faculty n
    print ("x! = " ++ show r)


faculty :: (Eq int, Num int) => int -> int
faculty 0 = 1
faculty n = n * faculty (n - 1)