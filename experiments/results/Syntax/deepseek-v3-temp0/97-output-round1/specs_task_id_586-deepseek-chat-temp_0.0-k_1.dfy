```dafny
method splitArr(l: seq<int>, n: int) returns (part: seq<int>)
  requires 0 <= n <= |l|
  ensures |part| == |l|
  ensures forall i :: 0 <= i < |l| ==> part[i] == l[(i + n) % |l|]
{
  // Implementation not provided
}
```