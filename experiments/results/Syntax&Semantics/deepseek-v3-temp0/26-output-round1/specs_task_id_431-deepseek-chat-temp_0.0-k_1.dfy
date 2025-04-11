```dafny
method HasCommonElement(a: array<int>, b: array<int>) returns (result: bool)
  requires a != null && b != null
  ensures result == (exists i, j :: 0 <= i < a.Length && 0 <= j < b.Length && a[i] == b[j])
{
  // Implementation not provided
}
```