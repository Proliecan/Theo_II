main :: IO ()
main = do
    print "Please enter first operand: "
    m <- readLn
    print "Please enter second operand: "
    n <- readLn
    print (show n ++ " ackermann " ++ show m ++ " = " ++ show (ak m n))


ak 0 b = b+1
ak a 0 = ak (a-1) 1
ak a b = ak (a-1) (ak a (b-1))