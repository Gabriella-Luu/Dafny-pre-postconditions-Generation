```dafny
method IsGreater(n: int, a: array<int>) returns (result: bool)
  requires a != null
  ensures 
    result == true <==> (forall i :: 0 <= i < a.Length ==> n > a[i])
  ensures 
    result == false <==> (exists i :: 0 <= i < a.Length && n <= a[i])
```