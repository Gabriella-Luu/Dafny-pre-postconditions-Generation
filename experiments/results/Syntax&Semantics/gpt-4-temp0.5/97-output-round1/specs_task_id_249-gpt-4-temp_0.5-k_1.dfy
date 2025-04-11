```dafny
method intersectionArray(a: array<int>, b: array<int>) returns (result: seq<int>)
    requires a != null && b != null
    ensures forall i :: 0 <= i < |result| ==> (result[i] in a[..]) && (result[i] in b[..])  // Completeness Check
    ensures forall x :: x in a[..] && x in b[..] ==> x in result  // Exclusivity Check
    ensures forall i, j :: 0 <= i < j < |result| ==> result[i] != result[j]  // Uniqueness Check
```