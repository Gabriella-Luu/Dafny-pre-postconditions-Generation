```dafny
method FindEvenNumbers(arr: array<int>) returns (evenList: seq<int>)
  requires arr != null
  ensures evenList == [x | x in arr[..] where x % 2 == 0]
{
  // Implementation not provided
}
```