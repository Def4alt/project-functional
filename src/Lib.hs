module Lib (
    isPerfect,
    isAbundant,
    isDeficiend
) where

isPerfect :: Int -> Bool
isPerfect num = sum (factorsOf num) - num == num

isAbundant :: Int -> Bool
isAbundant num = sum (factorsOf num) - num > num

isDeficiend :: Int -> Bool
isDeficiend num = sum (factorsOf num) - num < num

factorsOf :: Int -> [Int]
factorsOf num = filter (\x -> mod num x == 0) [1..num]