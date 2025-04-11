```dafny
method RotateRight(l: seq<int>, n: int) returns (r: seq<int>)
   ensures r == (if |l| == 0 then [] else l[|l| - (n % |l|) ..] + l[.. |l| - (n % |l|)])
{
   // Implementation not provided
}
```