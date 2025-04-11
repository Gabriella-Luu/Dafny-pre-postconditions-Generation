```dafny
method getEqual(list: seq<seq<int>>) returns (res:bool)
  requires |list| > 0
  ensures res <==> (forall i,j :: 0 <= i < j < |list| ==> |list[i]| == |list[j]|)
```