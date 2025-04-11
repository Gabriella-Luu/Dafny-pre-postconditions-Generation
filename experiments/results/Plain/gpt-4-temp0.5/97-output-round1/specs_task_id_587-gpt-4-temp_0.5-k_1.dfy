```dafny
method arrayToSequence(arr: array<int>) returns (res: seq<int>)
  requires arr != null // Array must not be null
  ensures |res| == |arr| // The length of the sequence should be equal to the length of the array
  ensures forall i :: 0 <= i < |arr| ==> arr[i] == res[i] // All elements in the sequence should be the same and in the same order as in the array
```