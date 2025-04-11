```dafny
method SwapFirstAndLast(a: array<int>)
  requires a != null && a.Length > 0
  ensures a[0] == old(a[a.Length - 1]) && a[a.Length - 1] == old(a[0])
  ensures forall i :: 1 <= i < a.Length - 1 ==> a[i] == old(a[i])
```