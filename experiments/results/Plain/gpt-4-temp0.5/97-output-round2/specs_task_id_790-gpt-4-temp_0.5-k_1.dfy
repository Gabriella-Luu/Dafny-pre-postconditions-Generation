```dafny
method evenPosition(list: seq<int>) returns (res:bool)
  requires forall i :: 0 <= i < |list| ==> i % 2 == 0 ==> list[i] % 2 == 0
  ensures res == (forall i :: 0 <= i < |list| ==> i % 2 == 0 ==> list[i] % 2 == 0)
```