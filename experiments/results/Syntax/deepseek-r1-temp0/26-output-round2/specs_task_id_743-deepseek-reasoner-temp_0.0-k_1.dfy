```dafny
method RotateRight(l: seq<int>, n: int) returns (r: seq<int>)
  ensures |r| == |l|
  ensures (|l| != 0) ==> (forall j: int :: (0 <= j < |l|) ==> (r[j] == l[((j - (n % |l|)) % |l|]))
{
}
```