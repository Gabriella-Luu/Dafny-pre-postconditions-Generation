```dafny
method arrayToSequence(arr: array<int>) returns (res: seq<int>)
  requires arr != null // The input array must not be null
  ensures |res| == |arr| // The length of the resulting sequence must be equal to the length of the input array
  ensures forall i :: 0 <= i < |arr| ==> arr[i] == res[i] // Each element in the resulting sequence must be equal to the corresponding element in the input array
  {
    // Method implementation goes here
  }
```