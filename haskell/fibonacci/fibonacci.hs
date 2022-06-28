import System.Environment

main :: IO ()
main = do
    args <- getArgs
    let ( n : _) = args

    print ("fib " ++ show n ++ show (fib (read n)))

fib 0 = 0
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)