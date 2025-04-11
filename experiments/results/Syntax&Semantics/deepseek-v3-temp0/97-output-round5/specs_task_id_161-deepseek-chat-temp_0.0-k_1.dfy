```dafny
method removeElements(list1: array<int>, list2: array<int>) returns (res: array<int>)
  requires list1 != null && list2 != null
  ensures res != null
  ensures forall i :: 0 <= i < res.Length ==> !(res[i] in list2[..])
  ensures forall j :: 0 <= j < list1.Length && !(list1[j] in list2[..]) ==> list1[j] in res[..]
  ensures forall k, l :: 0 <= k < l < res.Length ==> res[k] != res[l]
{
  // Implementation not provided
}
```