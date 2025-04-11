```dafny
method removeElements(list1:array<int>, list2:array<int>) returns (res:array<int>)
  ensures forall k :: 0 <= k < res.Length ==> res[k] in list1[..] && !(res[k] in list2[..])
  ensures forall i :: 0 <= i < list1.Length && !(list1[i] in list2[..]) ==> exists k :: 0 <= k < res.Length && res[k] == list1[i]
  ensures forall k1, k2 :: 0 <= k1 < k2 < res.Length ==> exists i1, i2 :: 0 <= i1 < i2 < list1.Length && list1[i1] == res[k1] && list1[i2] == res[k2]
{
  // Implementation not provided
}
```