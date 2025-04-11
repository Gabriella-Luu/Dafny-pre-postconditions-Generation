```dafny
method arrayToSequence(arr:array<int>) returns (res: seq<int>)
  requires arr != null
  ensures res == old(arr[..])
```