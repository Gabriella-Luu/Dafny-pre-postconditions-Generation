```dafny
method getEqual(list: seq<seq<int>>) returns (res:bool)
  ensures res <==> (|list| == 0 || (forall i :: 0 <= i < |list| ==> |list[i]| == |list[0]|))
{
  // Method implementation not provided
}
```