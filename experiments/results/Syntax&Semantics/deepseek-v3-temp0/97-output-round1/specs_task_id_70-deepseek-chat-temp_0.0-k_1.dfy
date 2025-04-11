```dafny
method getEqual(list: seq<seq<int>>) returns (res: bool)
  ensures res <==> (forall i, j :: 0 <= i < j < |list| ==> |list[i]| == |list[j]|)
  ensures res == (|list| == 0 || (forall i :: 0 <= i < |list| ==> |list[i]| == |list[0]|))
{
  // Implementation not provided
}
```