module Main where

import Lib

main :: IO ()
main = do
    print (isPerfect 2)
    print (isAbundant 2)
    print (isDeficiend 2)
