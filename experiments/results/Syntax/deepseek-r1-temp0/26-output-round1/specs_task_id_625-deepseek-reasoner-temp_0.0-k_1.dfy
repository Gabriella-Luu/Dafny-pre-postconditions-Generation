```dafny
method SwapFirstAndLast(a: array<int>)
  requires a.Length >= 1
  ensures a[0] == old(a[a.Length - 1])
  ensures a[a.Length - 1] == old(a[0])
  ensures forall i :: 0 <= i < a.Length && (i != 0 && i != a.Length - 1) ==> a[i] == old(a[i])
```