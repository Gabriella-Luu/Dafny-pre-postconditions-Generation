```dafny
method removeElements(list1:array<int>, list2:array<int>) returns (res:array<int>)
  requires list1 != null
  requires list2 != null
  ensures res != null
  // All elements in result are from list1 and not in list2
  ensures forall x :: x in res[..] ==> x in list1[..] && x !in list2[..]
  // All elements from list1 not in list2 are preserved in order
  ensures forall x :: x in list1[..] && x !in list2[..] ==> x in res[..]
  // Order of remaining elements matches original list1 order
  ensures forall i, j :: 0 <= i < j < res.Length ==> 
    exists k, l :: 0 <= k < l < list1.Length && res[i] == list1[k] && res[j] == list1[l]
{
  // Implementation not provided
}
```