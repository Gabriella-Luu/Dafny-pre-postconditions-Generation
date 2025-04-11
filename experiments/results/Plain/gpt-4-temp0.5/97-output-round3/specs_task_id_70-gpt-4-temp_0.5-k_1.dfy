```dafny
method getEqual(list: seq<seq<int>>) returns (res:bool)
  requires forall i, j :: 0 <= i < |list| && 0 <= j < |list| ==> |list[i]| >= 0 && |list[j]| >= 0
  ensures res == true <==> (forall i, j :: 0 <= i < |list| && 0 <= j < |list| ==> |list[i]| == |list[j]|)
  ensures res == false <==> exists i, j :: 0 <= i < |list| && 0 <= j < |list| && |list[i]| != |list[j]|
{}
```