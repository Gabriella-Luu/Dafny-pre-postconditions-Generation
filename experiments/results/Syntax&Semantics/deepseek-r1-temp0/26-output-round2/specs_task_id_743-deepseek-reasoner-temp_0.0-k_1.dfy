```dafny
method RotateRight(l: seq<int>, n: int) returns (r: seq<int>)
  ensures |r| == |l|
  ensures (|l| == 0) ==> r == l
  ensures (|l| > 0) ==> forall k :: 0 <= k < |l| ==> r[k] == l[(k - ((n % |l| + |l|) % |l|) + |l|) % |l|]
{
  // Implementation not provided
}
```