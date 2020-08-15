{-# LANGUAGE ScopedTypeVariables #-}

module LibTest where

import Lib
import TestHelper

test_Tests :: TestTree
test_Tests = testGroup "Lib tests" [isPerfectTest, isAbundantTest, isDeficiendTest]

isPerfectTest :: TestTree
isPerfectTest =
  testGroup
    "isPerfect"
    [ testCase "3 is not perfect" $
        assertEqual "" (isPerfect 3) False,
      testCase "6 is perfect" $
        assertEqual "" (isPerfect 6) True
    ]

isAbundantTest :: TestTree
isAbundantTest =
  testGroup
    "isAbundant"
    [ testCase "4 is not abundant" $
        assertEqual "" (isAbundant 4) False,
      testCase "12 is abundant" $
        assertEqual "" (isAbundant 12) True
    ]

isDeficiendTest :: TestTree
isDeficiendTest =
  testGroup
    "isDeficiend"
    [ testCase "16 is not deficiend" $
        assertEqual "" (isDeficiend 12) False,
      testCase "4 is deficiend" $
        assertEqual "" (isDeficiend 4) True
    ]
