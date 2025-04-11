```dafny
method IsGreater(n: int, a: array<int>) returns (result: bool)
  requires a != null && a.Length > 0 // the array should not be null and should have at least one element
  ensures forall i :: 0 <= i < a.Length ==> n > a[i] == result // the result should be true if and only if n is greater than all elements of the array
  {}
```