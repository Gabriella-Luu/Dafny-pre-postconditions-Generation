```dafny
method extract(list: seq<seq<int>>) returns (res: seq<int>)
  requires forall sublist :: sublist in list ==> |sublist| >= 1
  ensures |res| == |list|
  ensures forall i :: 0 <= i < |list| ==> res[i] == list[i][0]
{
  // Implementation not shown
}
```