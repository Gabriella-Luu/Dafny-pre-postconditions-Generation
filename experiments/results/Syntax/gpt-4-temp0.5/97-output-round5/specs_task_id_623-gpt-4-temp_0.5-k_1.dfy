```dafny
method nthNums(list:seq<int>, n:int) returns (res: seq<int>)
  requires n >= 0
  ensures |res| == |list|
  ensures forall i :: 0 <= i < |list| ==> res[i] == Power(list[i], n)
```