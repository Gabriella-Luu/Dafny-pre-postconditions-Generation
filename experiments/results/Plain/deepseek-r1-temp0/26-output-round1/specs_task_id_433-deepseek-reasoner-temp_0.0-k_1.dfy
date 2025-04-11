```dafny
method IsGreater(n: int, a: array<int>) returns (result: bool)
  ensures result == (forall k | 0 <= k < a.Length :: a[k] < n)
{
  // Implementation goes here
}
```