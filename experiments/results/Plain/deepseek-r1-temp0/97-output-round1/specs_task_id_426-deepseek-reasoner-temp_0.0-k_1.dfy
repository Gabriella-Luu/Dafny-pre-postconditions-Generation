```dafny
method filterOddNumbers (arr: array<int>) returns (odds: seq<int>)
  requires arr != null
  ensures odds == seq k | k in arr[..] where k % 2 != 0
{
}
```