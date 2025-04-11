```dafny
method negNos(list1: array<int>) returns (res: array<int>)
  requires list1 != null
  ensures res != null
  ensures forall i :: 0 <= i < res.Length ==> res[i] < 0
  ensures forall j :: 0 <= j < list1.Length && list1[j] < 0 ==> exists k :: 0 <= k < res.Length && res[k] == list1[j]
  ensures forall k :: 0 <= k < res.Length ==> exists j :: 0 <= j < list1.Length && list1[j] == res[k]
```