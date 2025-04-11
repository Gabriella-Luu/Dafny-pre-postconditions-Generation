```dafny
method evenPosition(list: seq<int>) returns (res:bool)
  requires forall i :: 0 <= i < |list| ==> i%2 == 0 ==> list[i]%2 == 0
  ensures res == true <==> (forall i :: 0 <= i < |list| ==> i%2 == 0 ==> list[i]%2 == 0)
  ensures res == false <==> (exists i :: 0 <= i < |list| && i%2 == 0 && list[i]%2 != 0)
{}
```