```dafny
method removeElements(list1:array<int>, list2:array<int>) returns (res:array<int>)
    requires list1 != null && list2 != null
    requires list1.Length > 0 && list2.Length > 0
    ensures res != null
    ensures res.Length <= list1.Length
    ensures (forall i :: 0 <= i < res.Length ==> !(res[i] in list2[..]))
    ensures (forall i :: 0 <= i < list1.Length ==> (if list1[i] in list2[..] then !(list1[i] in res[..]) else (list1[i] in res[..])))
```