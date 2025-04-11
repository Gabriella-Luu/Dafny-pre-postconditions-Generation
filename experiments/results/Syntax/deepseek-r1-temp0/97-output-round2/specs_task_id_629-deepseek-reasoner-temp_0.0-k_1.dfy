```dafny
method FindEvenNumbers(arr: array<int>) returns (evenList: seq<int>)
  ensures forall x :: x in evenList ==> x % 2 == 0
  ensures forall j :: (0 <= j < arr.Length && arr[j] % 2 == 0) ==> arr[j] in evenList
  ensures forall x :: x in evenList ==> x in arr[..]
{
  // Implementation not provided
}
```