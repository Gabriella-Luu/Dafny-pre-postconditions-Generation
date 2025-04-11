```dafny
method intersectionArray(a: array<int>, b: array<int>) returns (result: seq<int>)
  requires a != null && b != null // the input arrays must not be null
  requires a.Length > 0 && b.Length > 0 // the input arrays must not be empty
  ensures forall i :: 0 <= i < result.Length ==> result[i] in a[..] && result[i] in b[..] // every element in the result is in both a and b
  ensures forall i, j :: 0 <= i < a.Length && 0 <= j < b.Length && a[i] == b[j] ==> a[i] in result // if an element is in both a and b, it is in the result
  ensures forall i, j :: 0 <= i < a.Length && 0 <= j < b.Length && a[i] != b[j] ==> a[i] !in result || b[j] !in result // if an element is not in both a and b, it is not in the result
{
  // method implementation goes here
}
```