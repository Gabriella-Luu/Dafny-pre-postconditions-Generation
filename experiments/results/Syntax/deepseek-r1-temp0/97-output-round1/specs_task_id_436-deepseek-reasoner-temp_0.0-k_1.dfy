```dafny
method negNos(list1: array<int>) returns (res: array<int>)
    ensures forall i :: 0 <= i < res.Length ==> res[i] < 0
    ensures forall i :: 0 <= i < res.Length ==> (exists j :: 0 <= j < list1.Length && list1[j] == res[i])
    ensures forall j :: (0 <= j < list1.Length && list1[j] < 0) ==> (exists i :: 0 <= i < res.Length && list1[j] == res[i])
    ensures forall k, i :: (0 <= k < i < res.Length) ==> (exists j1, j2 :: 0 <= j1 < j2 < list1.Length && list1[j1] == res[k] && list1[j2] == res[i])
{
    // Implementation not provided
}
```