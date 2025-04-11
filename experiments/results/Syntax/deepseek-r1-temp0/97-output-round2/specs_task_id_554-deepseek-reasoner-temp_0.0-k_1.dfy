```dafny
method oddSplit(arr: array<int>) returns (oddList: seq<int>)
  ensures oddList == seq j | j in 0..arr.Length-1 where arr[j] % 2 == 1 :: arr[j]
{
  // Implementation not shown
}
```