```dafny
method filterOddNumbers (arr: array<int>) returns (odds: seq<int>)
   requires arr != null
   ensures odds == seq(x | x in arr[..] | x % 2 != 0)
{
   // Implementation not provided
}
```