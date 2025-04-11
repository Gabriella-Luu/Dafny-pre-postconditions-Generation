```dafny
method negNos(list1:array<int>) returns (res:array<int>)
  requires list1 != null
  ensures res != null
  ensures res.Length <= list1.Length
  ensures forall i :: 0 <= i < res.Length ==> res[i] < 0
  ensures forall i :: 0 <= i < res.Length ==> (exists j :: 0 <= j < list1.Length && list1[j] == res[i])
  ensures forall i :: 0 <= i < list1.Length && list1[i] < 0 ==> (exists j :: 0 <= j < res.Length && res[j] == list1[i])
```