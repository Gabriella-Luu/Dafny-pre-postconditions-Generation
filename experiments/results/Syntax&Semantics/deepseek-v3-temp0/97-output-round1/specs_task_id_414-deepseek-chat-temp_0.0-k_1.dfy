```dafny
// Dafny method without implementation
method overlapping(list1: seq<int>, list2: seq<int>) returns (res: bool)
  ensures res == (exists i :: 0 <= i < |list1| && list1[i] in list2)
  ensures !res ==> (forall j :: 0 <= j < |list1| ==> !(list1[j] in list2))
{
  // Implementation not provided
}
```