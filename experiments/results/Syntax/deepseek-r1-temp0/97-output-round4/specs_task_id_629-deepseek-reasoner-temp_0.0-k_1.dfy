```dafny
method FindEvenNumbers(arr: array<int>) returns (evenList: seq<int>)
  ensures evenList == [x | x in arr[..] if x % 2 == 0]
{
  // Implementation not provided
}
```