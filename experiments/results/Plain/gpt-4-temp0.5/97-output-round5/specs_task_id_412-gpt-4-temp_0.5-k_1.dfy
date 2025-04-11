```dafny
method removeOdd(arr: array<int>) returns (evenList: seq<int>)
  requires arr != null  // The input array should not be null
  ensures forall i :: i in evenList ==> i % 2 == 0  // All numbers in the returned sequence should be even
  ensures forall i :: i in arr && i % 2 == 0 ==> i in evenList  // All even numbers in the input array should be in the returned sequence
  ensures forall i :: i in evenList ==> (exists j :: j in arr && j == i)  // All numbers in the returned sequence should exist in the input array
{}
```