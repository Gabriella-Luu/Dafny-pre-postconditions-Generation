```dafny
method arrayToSequence(arr: array<int>) returns (res: seq<int>)
  requires arr != null // The input array should not be null
  ensures |res| == |arr| // The output sequence should have the same length as the input array
  ensures forall i :: 0 <= i < |arr| ==> arr[i] == res[i] // Each element in the output sequence should be the same as the corresponding element in the input array
```