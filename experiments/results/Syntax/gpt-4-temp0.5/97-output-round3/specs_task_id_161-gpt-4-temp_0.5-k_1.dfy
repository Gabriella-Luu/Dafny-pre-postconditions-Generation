```dafny
method removeElements(list1:array<int>, list2:array<int>) returns (res:array<int>)
  requires list1 != null && list2 != null
  ensures res != null
  ensures forall i :: 0 <= i < list1.Length ==> (if (exists j :: 0 <= j < list2.Length && list1[i] == list2[j]) then !(exists k :: 0 <= k < res.Length && res[k] == list1[i]) else (exists k :: 0 <= k < res.Length && res[k] == list1[i]))
  ensures forall i :: 0 <= i < res.Length ==> (exists j :: 0 <= j < list1.Length && res[i] == list1[j] && !(exists k :: 0 <= k < list2.Length && res[i] == list2[k]))
  ensures res.Length <= list1.Length
{}
```