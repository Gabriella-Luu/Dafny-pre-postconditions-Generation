```dafny
method nthNums(list: seq<int>, n: int) returns (res: seq<int>)
    requires n >= 0  // n should be a non-negative integer
    requires forall i :: 0 <= i < |list| ==> list[i] >= 0  // All elements in the list should be non-negative
    ensures |res| == |list|  // The result list should have the same length as the input list
    ensures forall i :: 0 <= i < |res| ==> res[i] == list[i] ^ n  // Each element in the result list should be the n-th power of the corresponding element in the input list
{}
```