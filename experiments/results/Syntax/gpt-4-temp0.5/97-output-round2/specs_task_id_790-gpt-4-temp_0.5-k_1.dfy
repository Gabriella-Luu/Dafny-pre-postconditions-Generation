```dafny
method evenPosition(list: seq<int>) returns (res: bool)
  requires forall i :: 0 <= i < |list| ==> list[i] >= 0
  ensures (forall i :: 0 <= i < |list| && i % 2 == 0 ==> list[i] % 2 == 0) <==> res
```