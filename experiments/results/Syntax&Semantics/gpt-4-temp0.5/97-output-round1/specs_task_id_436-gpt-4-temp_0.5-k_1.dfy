```dafny
method negNos(list1:array<int>) returns (res:array<int>)
    requires list1 != null
    ensures forall i :: 0 <= i < list1.Length ==> (list1[i] < 0 ==> list1[i] in res[..])
    ensures forall j :: 0 <= j < res.Length ==> res[j] < 0
    ensures forall k, l :: 0 <= k < l < res.Length ==> res[k] != res[l]
```