```dafny
method SwapFirstAndLast(a: array<int>)
  requires a != null && a.Length > 1
  ensures a != null && a.Length > 1
  ensures a[0] == old(a[a.Length - 1]) && a[a.Length - 1] == old(a[0])
  ensures forall k :: 1 <= k < a.Length - 1 ==> a[k] == old(a[k])
```