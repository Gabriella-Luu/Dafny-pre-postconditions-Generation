Here is the Dafny method with the specified preconditions and postconditions:

```dafny
method sumList(a: seq<int>, b: seq<int>) returns (result: seq<int>)
  requires a != null && b != null // Input lists should not be null
  requires |a| == |b| // Input lists should have the same length
  ensures |result| == |a| // The result list should have the same length as the input lists
  ensures forall i :: 0 <= i < |a| ==> result[i] == a[i] + b[i] // Each element in the result list should be the sum of the corresponding elements in the input lists
{
  // Method implementation goes here
}
```