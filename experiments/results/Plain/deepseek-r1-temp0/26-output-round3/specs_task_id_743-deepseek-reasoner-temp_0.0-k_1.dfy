```dafny
method RotateRight(l: seq<int>, n: int) returns (r: seq<int>)
  requires n >= 0
  ensures |r| == |l|
  ensures if |l| == 0 then r == l else r == l[|l| - (n % |l|) .. |l|] + l[0 .. |l| - (n % |l|)]
{
  // Implementation not provided
}
```