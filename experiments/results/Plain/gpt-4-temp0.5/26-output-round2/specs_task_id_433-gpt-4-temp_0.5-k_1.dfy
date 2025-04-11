```dafny
method IsGreater(n: int, a: array<int>) returns (result: bool)
  requires a != null && a.Length > 0
  ensures forall i :: 0 <= i < a.Length ==> n > a[i] ==> result == true
  ensures exists i :: 0 <= i < a.Length && n <= a[i] ==> result == false
```