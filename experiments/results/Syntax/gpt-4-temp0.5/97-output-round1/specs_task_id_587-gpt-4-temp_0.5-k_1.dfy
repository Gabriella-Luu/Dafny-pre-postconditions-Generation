```dafny
method arrayToSequence(arr:array<int>) returns (res: seq<int>)
  requires arr != null
  ensures |res| == arr.Length
  ensures forall i :: 0 <= i < arr.Length ==> arr[i] == res[i]
```