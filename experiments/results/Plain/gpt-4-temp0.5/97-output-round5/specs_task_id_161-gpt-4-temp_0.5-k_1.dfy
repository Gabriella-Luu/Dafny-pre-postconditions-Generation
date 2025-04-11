```dafny
method removeElements(list1:array<int>, list2:array<int>) returns (res:array<int>)
  requires list1 != null && list2 != null
  ensures forall i :: 0 <= i < res.Length ==> 
    (exists j :: 0 <= j < list1.Length && list1[j] == res[i] && 
    (forall k :: 0 <= k < list2.Length ==> list2[k] != res[i]))
```