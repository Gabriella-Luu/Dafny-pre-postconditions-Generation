```dafny
method RotateRight(l: seq<int>, n: int) returns (r: seq<int>)
  ensures |r| == |l|
  ensures (|l| == 0 ==> r == l)
  ensures (|l| > 0 ==> forall i :: 0 <= i < |l| ==> r[i] == l[(i - (n % |l|)) % |l|])
{
  // Implementation not provided
}
```