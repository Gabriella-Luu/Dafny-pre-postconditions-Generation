```dafny
method nthNums(list:seq<int>, n:int) returns (res: seq<int>)
  requires n >= 0
  ensures |res| == |list|
  ensures forall i :: 0 <= i < |list| ==> res[i] == (if n == 0 then 1 else list[i] * (if n > 1 then list[i]^(n-1) else list[i]))
```