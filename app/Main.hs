module Main where

import Lib

main :: IO ()
main = print $ bucketify "the quick brown fox jumps over the lazy dog" 10 []
