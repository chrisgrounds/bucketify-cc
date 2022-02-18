import Lib
import Test.HUnit
  ( Counts,
    Test (TestCase, TestList),
    assertEqual,
    runTestTT,
  )

test1 =
  TestCase
    (assertEqual "a b c d" ["a", "b", "c", "d"] (bucketify "a b c d" 2 []))

test2 =
  TestCase
    (assertEqual "the quick brown fox jumps over the lazy dog" ["the quick", "brown fox", "jumps over", "the lazy", "dog"] (bucketify "the quick brown fox jumps over the lazy dog" 10 []))

test3 =
  TestCase
    (assertEqual "how vexingly quick daft zebras jump" ["how vexingly", "quick daft", "zebras jump"] (bucketify "how vexingly quick daft zebras jump" 12 []))

test4 =
  TestCase
    (assertEqual "the five boxing wizards jump quickly" ["the", "five", "boxing", "wizards", "jump", "quickly"] (bucketify "the five boxing wizards jump quickly" 7 []))

tests = TestList [test1, test2, test3, test4]

main :: IO Counts
main = runTestTT tests
