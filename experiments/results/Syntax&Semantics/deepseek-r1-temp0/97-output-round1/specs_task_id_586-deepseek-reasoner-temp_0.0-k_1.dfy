```dafny
method splitArr(l: seq<int>, n:int) returns (part:seq<int>)
  requires 0 <= n <= |l|
  ensures part == l[n..] + l[..n]
{
}
```