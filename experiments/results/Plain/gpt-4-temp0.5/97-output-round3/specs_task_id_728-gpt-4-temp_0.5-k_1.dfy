```dafny
method sumList(a: seq<int>, b: seq<int>) returns (result: seq<int>)
  requires a != null && b != null // Both lists must not be null
  requires |a| == |b| // Both lists must have the same length
  ensures |result| == |a| // The resulting list has the same length as the input lists
  ensures forall i :: 0 <= i < |result| ==> result[i] == a[i] + b[i] // Each element in the result list is the sum of the corresponding elements in the input lists
```