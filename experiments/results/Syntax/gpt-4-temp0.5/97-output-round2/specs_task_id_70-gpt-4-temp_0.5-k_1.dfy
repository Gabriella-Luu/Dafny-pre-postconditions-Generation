```dafny
method getEqual(list: seq<seq<int>>) returns (res: bool)
  ensures res <==> (forall i :: 0 <= i < |list| ==> |list[i]| == |list[0]|)
{
}
```