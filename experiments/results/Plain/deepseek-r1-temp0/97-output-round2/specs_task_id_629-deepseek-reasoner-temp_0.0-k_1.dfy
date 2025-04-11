```dafny
method FindEvenNumbers(arr: array<int>) returns (evenList: seq<int>)
   requires arr != null
   ensures forall x :: x in evenList ==> x % 2 == 0
   ensures forall x :: x in evenList ==> exists i | 0 <= i < arr.Length :: arr[i] == x
   ensures forall i | 0 <= i < arr.Length :: arr[i] % 2 == 0 ==> arr[i] in evenList
{
   // Implementation not provided
}
```