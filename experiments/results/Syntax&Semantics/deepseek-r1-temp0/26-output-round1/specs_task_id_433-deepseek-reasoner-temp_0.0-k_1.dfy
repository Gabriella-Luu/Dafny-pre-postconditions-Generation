```dafny
method IsGreater(n: int, a: array<int>) returns (result: bool)
  ensures result <==> (forall i :: 0 <= i < a.Length ==> n > a[i])
{
  // Implementation not provided
}
```