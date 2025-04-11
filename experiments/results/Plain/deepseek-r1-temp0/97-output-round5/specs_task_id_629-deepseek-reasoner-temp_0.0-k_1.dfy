```dafny
method FindEvenNumbers(arr: array<int>) returns (evenList: seq<int>)
  requires arr != null
  ensures evenList == seq j | j in arr[..] where j % 2 == 0
{
  // Implementation not provided
}
```