```dafny
method arrayToSequence(arr: array<int>) returns (res: seq<int>)
  ensures |res| == arr.Length
  ensures forall i :: 0 <= i < arr.Length ==> res[i] == arr[i]
{
  // Implementation not provided
}
```