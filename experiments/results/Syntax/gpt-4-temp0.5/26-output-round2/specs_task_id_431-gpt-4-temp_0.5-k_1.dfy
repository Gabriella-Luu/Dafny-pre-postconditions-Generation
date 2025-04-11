```dafny
method HasCommonElement(a: array<int>, b: array<int>) returns (result: bool)
  requires a != null && b != null // Ensuring the arrays are not null is implicit in Dafny for arrays
  ensures result <==> (exists i :: 0 <= i < a.Length && (exists j :: 0 <= j < b.Length && a[i] == b[j]))
{
  // Method implementation would go here
}
```