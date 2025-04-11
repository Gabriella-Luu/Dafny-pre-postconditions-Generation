```dafny
method ElementWiseModulo(a: array<int>, b: array<int>) returns (result: array<int>)
  requires a.Length == b.Length
  requires forall i :: 0 <= i < a.Length ==> b[i] != 0
  ensures result.Length == a.Length
  ensures forall i :: 0 <= i < result.Length ==> result[i] == a[i] % b[i]
{
  // Implementation not provided
}
```