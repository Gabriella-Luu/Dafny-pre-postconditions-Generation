```dafny
method HasOnlyOneDistinctElement(a: array<int>) returns (result: bool)
  ensures result <==> (a.Length > 0 && (forall i :: 0 <= i < a.Length ==> a[i] == a[0]))
{
  // Implementation not provided
}
```