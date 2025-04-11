```dafny
method removeElements(list1:array<int>, list2:array<int>) returns (res:array<int>)
  requires list1 != null && list2 != null
  ensures forall i :: 0 <= i < res.Length ==> !list2.Contains(res[i])
  ensures forall i :: 0 <= i < list1.Length ==> (list1[i] in res || list2.Contains(list1[i]))
  ensures res.Length <= list1.Length
```