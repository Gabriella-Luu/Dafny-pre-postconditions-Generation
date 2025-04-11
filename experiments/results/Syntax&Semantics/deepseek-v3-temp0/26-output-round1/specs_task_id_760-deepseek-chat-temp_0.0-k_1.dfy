```dafny
method HasOnlyOneDistinctElement(a: array<int>) returns (result: bool)
  requires a != null
  ensures result == (forall i, j :: 0 <= i < j < a.Length ==> a[i] == a[j])
{
  // Implementation not provided
}
```