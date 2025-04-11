```dafny
method IsSorted(a: array<int>) returns (sorted: bool)
  requires a != null
  ensures sorted <==> (forall i :: 0 <= i < a.Length - 1 ==> a[i] <= a[i + 1])
{
  // Implementation not provided
}
```