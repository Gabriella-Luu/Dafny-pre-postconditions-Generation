```dafny
method nthNums(list:seq<int>, n:int) returns (res: seq<int>)
  requires n >= 0  // The power n should be a non-negative integer
  ensures |res| == |list|  // The result list should have the same length as the input list
  ensures forall i :: 0 <= i < |list| ==> res[i] == list[i] ** n  // Each element in the result list should be the n-th power of the corresponding element in the input list
{
  // method implementation goes here
}
```