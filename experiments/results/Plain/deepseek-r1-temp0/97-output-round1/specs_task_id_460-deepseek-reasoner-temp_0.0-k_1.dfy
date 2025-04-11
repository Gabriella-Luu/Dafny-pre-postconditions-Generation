```dafny
method extract(list: seq<seq<int>>) returns (res: seq<int>)
  requires forall sublist :: sublist in list ==> |sublist| > 0
  ensures |res| == |list|
  ensures forall i :: 0 <= i < |res| ==> res[i] == list[i][0]
{
}
```