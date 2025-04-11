```dafny
method removeElements(list1:array<int>, list2:array<int>) returns (res:array<int>)
  ensures forall k :: 0 <= k < res.Length ==> res[k] in list1[..] && res[k] !in list2[..]
  ensures forall i :: 0 <= i < list1.Length && list1[i] !in list2[..] ==> 
    (exists k :: 0 <= k < res.Length && res[k] == list1[i] && k == |{ j | 0 <= j < i && list1[j] !in list2[..] }|)
{
  // Method implementation (not shown)
}
```