```dafny
method removeElements(list1: array<int>, list2: array<int>) returns (res: array<int>)
  requires list1 != null && list2 != null
  ensures res != null
  ensures |res| <= list1.Length
  ensures forall i :: 0 <= i < |res| ==> res[i] in list1[..] && !(res[i] in list2[..])
  ensures forall x :: x in list1[..] && !(x in list2[..]) ==> x in res[..]
{
  // Implementation not provided
}
```