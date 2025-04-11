```dafny
method IsSorted(a: array<int>) returns (sorted: bool)
  ensures sorted <==> (forall k, l :: 0 <= k < l < a.Length ==> a[k] <= a[l])
{
  // Implementation not shown
}
```