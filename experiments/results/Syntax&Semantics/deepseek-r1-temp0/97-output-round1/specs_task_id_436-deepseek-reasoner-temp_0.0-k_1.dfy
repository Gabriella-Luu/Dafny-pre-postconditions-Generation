```dafny
method negNos(list1:array<int>) returns (res:array<int>)
  ensures forall elem :: elem in res[..] ==> elem < 0
  ensures forall k :: 0 <= k < list1.Length && list1[k] < 0 ==> list1[k] in res[..]
{
  // Implementation not provided
}
```