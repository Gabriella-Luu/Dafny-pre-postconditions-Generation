```dafny
method removeElements(list1: array<int>, list2: array<int>) returns (res: array<int>)
  requires list1 != null && list2 != null
  ensures res != null
  ensures forall i :: 0 <= i < res.Length ==> !(res[i] in list2[..])
  ensures forall i :: 0 <= i < list1.Length ==> (list1[i] in list2[..] || list1[i] in res[..])
  ensures |res| <= list1.Length
{
  // Implementation not provided
}
```