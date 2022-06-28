import System.Environment

main :: IO ()
main = do
    args <- getArgs
    let ( n : _) = args

    print ("fib " ++ show n ++ show (fib (read n)))

phi = (1 + sqrt 5) / 2
gr = (1 - sqrt 5) / 2    -- golden ratio

fib n = (phi ^ n - gr ^ n) / sqrt 5