module Lib (bucketify) where

bucketify :: String -> Int -> [String] -> [String]
bucketify "" _ acc = reverse acc
bucketify str count [] = bucketify (unwords . tail . words $ str) count [head . words $ str]
bucketify str count (a : acc) =
  let latestWordInAcc = if not . null $ a : acc then length a else 0
      nextWord = head . words $ str
      nextPortionOfStr = unwords . tail . words $ str
   in if latestWordInAcc + length nextWord < count
        then bucketify nextPortionOfStr count ((a ++ " " ++ nextWord) : acc)
        else bucketify nextPortionOfStr count (nextWord : a : acc)
