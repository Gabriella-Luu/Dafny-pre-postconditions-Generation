```dafny
method extract(list: seq<seq<int>>) returns (res: seq<int>)
  requires forall i :: 0 <= i < |list| ==> |list[i]| >= 1
  ensures |res| == |list|
  ensures forall i :: 0 <= i < |res| ==> res[i] == list[i][0]
{
  // Implementation not provided
}
```