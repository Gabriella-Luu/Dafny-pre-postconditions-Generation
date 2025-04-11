```dafny
method addPairwise(a: array<int>) returns (result: array<int>)
  requires a != null && a.Length > 0 && a.Length % 2 == 0
  ensures result != null && result.Length == a.Length / 2
  ensures forall i :: 0 <= i < result.Length ==> result[i] == a[2*i] + a[2*i + 1]
{
    // Method implementation goes here
}
```