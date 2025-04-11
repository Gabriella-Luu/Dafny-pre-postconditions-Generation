```dafny
method removeElements(list1: array<int>, list2: array<int>) returns (res: array<int>)
  requires list1 != null && list2 != null
  ensures |res| <= |list1|
  ensures forall i :: 0 <= i < |res| ==> res[i] in list1[..] && !(res[i] in list2[..])
  ensures forall k :: 0 <= k < |list1| && !(list1[k] in list2[..]) ==> list1[k] in res[..]
{
  // Implementation not provided
}
```