```dafny
method sumList(a: seq<int>, b: seq<int>) returns (result: seq<int>)
  requires a.Length == b.Length // Both lists must have the same length
  ensures result.Length == a.Length // The result list must have the same length as the input lists
  ensures forall i :: 0 <= i < a.Length ==> result[i] == a[i] + b[i] // Each element in the result list is the sum of the corresponding elements in the input lists
{
  // Method implementation is not included as per the task instructions.
}
```