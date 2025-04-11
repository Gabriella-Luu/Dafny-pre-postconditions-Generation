```dafny
method RotateRight(l: seq<int>, n: int) returns (r: seq<int>)
  ensures |r| == |l|
  ensures (if |l| != 0 then r == l[(|l| - (n % |l|))..] + l[..(|l| - (n % |l|))] else r == l)
{
  // Implementation not shown
}
```