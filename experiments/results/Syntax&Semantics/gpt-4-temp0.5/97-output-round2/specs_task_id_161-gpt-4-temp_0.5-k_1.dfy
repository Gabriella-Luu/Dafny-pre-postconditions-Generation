```dafny
method removeElements(list1:array<int>, list2:array<int>) returns (res:array<int>)
    requires list1 != null && list2 != null
    ensures forall i :: 0 <= i < list1.Length ==> (list1[i] in list2[..] ==> !(list1[i] in res[..])) && (!(list1[i] in list2[..]) ==> (list1[i] in res[..]))
    ensures forall j :: 0 <= j < res.Length ==> (res[j] in list1[..] && !(res[j] in list2[..]))
    ensures res.Length <= list1.Length
```