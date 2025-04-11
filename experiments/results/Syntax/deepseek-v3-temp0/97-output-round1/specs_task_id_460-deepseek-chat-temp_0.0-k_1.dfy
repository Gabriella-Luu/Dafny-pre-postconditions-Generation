```dafny
method extract(list: seq<seq<int>>) returns (res: seq<int>)
    requires |list| > 0
    requires forall i :: 0 <= i < |list| ==> |list[i]| > 0
    ensures |res| == |list|
    ensures forall i :: 0 <= i < |list| ==> res[i] == list[i][0]
{
    // Implementation not provided
}
```