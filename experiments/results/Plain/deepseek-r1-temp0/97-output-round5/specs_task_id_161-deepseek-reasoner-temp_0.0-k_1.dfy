```dafny
method removeElements(list1:array<int>, list2:array<int>) returns (res:array<int>)
  requires list1 != null
  requires list2 != null
  ensures res != null
  ensures forall x :: x in res[..] ==> x in list1[..] && x !in list2[..]
  ensures multiset(res[..]) == multiset{ x | x in list1[..] && x !in list2[..] }
  // To preserve order of remaining elements
  ensures forall i, j :: 0 <= i < j < res.Length ==> 
    (exists ki, kj :: 0 <= ki < kj < list1.Length && 
     list1[ki] == res[i] && list1[kj] == res[j] &&
     list1[ki] !in list2[..] && list1[kj] !in list2[..])
{
  // Method implementation not provided
}
```