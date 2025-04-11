```dafny
method IsSorted(a: array<int>) returns (sorted: bool)
  ensures sorted <==> (forall i :: 0 <= i < a.Length - 1 ==> a[i] <= a[i + 1])
```