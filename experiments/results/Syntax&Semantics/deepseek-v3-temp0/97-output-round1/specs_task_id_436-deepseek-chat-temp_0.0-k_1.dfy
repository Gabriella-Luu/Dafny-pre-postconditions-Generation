```dafny
method negNos(list1: array<int>) returns (res: array<int>)
  requires list1 != null
  ensures res != null
  ensures forall i :: 0 <= i < res.Length ==> res[i] < 0
  ensures forall k :: 0 <= k < list1.Length && list1[k] < 0 ==> exists j :: 0 <= j < res.Length && res[j] == list1[k]
  ensures forall j :: 0 <= j < res.Length ==> exists k :: 0 <= k < list1.Length && list1[k] == res[j]
  ensures forall i, j :: 0 <= i < j < res.Length ==> res[i] != res[j]
{
  // Implementation not provided
}
```