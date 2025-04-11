```dafny
method bitwiseXOR(sq1: seq<bv32>, sq2: seq<bv32>) returns (res: seq<bv32>)
  requires |sq1| == |sq2|
  ensures |res| == |sq1|
  ensures forall i :: 0 <= i < |sq1| ==> res[i] == (sq1[i] ^^ sq2[i])
```