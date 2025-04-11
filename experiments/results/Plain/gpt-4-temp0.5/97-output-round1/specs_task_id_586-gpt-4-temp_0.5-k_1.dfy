```dafny
method splitArr(l: seq<int>, n:int) returns (part:seq<int>)
    requires n >= 0 && n <= |l|
    ensures |part| == |l|
    ensures part == l[n..] + l[0..n]
{}
```