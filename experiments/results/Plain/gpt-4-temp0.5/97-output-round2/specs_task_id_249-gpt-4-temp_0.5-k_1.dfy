```dafny
method intersectionArray(a: array<int>, b: array<int>) returns (result: seq<int>)
  requires a != null && b != null // precondition: both arrays must be non-null
  ensures forall i :: 0 <= i < |result| ==> result[i] in a[..] && result[i] in b[..] // postcondition: all elements in the result sequence must be in both input arrays
  ensures forall i, j :: 0 <= i < j < |result| ==> result[i] != result[j] // postcondition: all elements in the result sequence must be unique
  ensures forall x :: x in a[..] && x in b[..] ==> x in result // postcondition: if an element is in both input arrays, it must be in the result sequence
{
  // Method implementation goes here
}
```