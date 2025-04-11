```dafny
method removeElements(list1:array<int>, list2:array<int>) returns (res:array<int>)
  ensures forall x :: x in res[..] ==> x in list1[..] && !(x in list2[..])
  ensures forall x :: x in list1[..] && !(x in list2[..]) ==> x in res[..]
  ensures forall i, j :: 0 <= i < j < res.Length ==> exists k, l :: 0 <= k < l < list1.Length && res[i] == list1[k] && res[j] == list1[l]
{
  // Implementation not provided
}
```