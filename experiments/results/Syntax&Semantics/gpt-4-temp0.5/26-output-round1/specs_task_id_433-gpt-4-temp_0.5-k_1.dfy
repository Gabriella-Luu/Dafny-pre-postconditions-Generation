```dafny
method IsGreater(n: int, a: array<int>) returns (result: bool)
    requires a != null && a.Length > 0
    ensures result <==> (forall i :: 0 <= i < a.Length ==> n > a[i])
```