```dafny
method arrayToSequence(arr: array<int>) returns (res: seq<int>)
  requires arr != null // Array must not be null
  ensures |res| == |arr| // The sequence length should be the same as the array length
  ensures forall i :: 0 <= i < |arr| ==> arr[i] == res[i] // Every element in the sequence should be the same as the corresponding element in the array
{
  // Method implementation goes here
}
```