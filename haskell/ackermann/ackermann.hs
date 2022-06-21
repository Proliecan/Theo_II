import System.Environment

main :: IO ()
main = do
    args <- getArgs
    let (m : n : _) = args
    
    print (show n ++ " ackermann " ++ show m ++ " = " ++ show (ak (read m) (read n)))


ak 0 b = b+1
ak a 0 = ak (a-1) 1
ak a b = ak (a-1) (ak a (b-1))