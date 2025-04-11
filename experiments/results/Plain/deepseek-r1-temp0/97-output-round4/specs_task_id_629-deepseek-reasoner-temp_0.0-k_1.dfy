```dafny
method FindEvenNumbers(arr: array<int>) returns (evenList: seq<int>)
   requires arr != null
   ensures evenList <= arr[..]
   ensures forall x :: x in evenList ==> x % 2 == 0
   ensures forall x :: x in arr[..] && x % 2 == 0 ==> x in evenList
{
   // Implementation not provided
}
```