```dafny
method FindEvenNumbers(arr: array<int>) returns (evenList: seq<int>)
  ensures evenList == seq j | 0 <= j < arr.Length && arr[j] % 2 == 0 :: arr[j]
{
  // Implementation not provided
}
```