```dafny
method IsSorted(a: array<int>) returns (sorted: bool)
  ensures sorted <==> (forall i, j :: 0 <= i < j < a.Length ==> a[i] <= a[j])
{
  // Implementation not provided
}
```