```dafny
method RotateRight(l: seq<int>, n: int) returns (r: seq<int>)
  requires |l| == 0 || n >= 0
  ensures |r| == |l|
  ensures |l| == 0 ==> r == l
  ensures |l| > 0 ==> r == l[(|l| - (n % |l|))..] + l[..(|l| - (n % |l|))]
{
  // Implementation not provided
}
```