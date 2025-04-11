```dafny
method checkElement(a1:array<int>, e:int) returns (res:bool)
  ensures res <==> (forall i :: 0 <= i < a1.Length ==> a1[i] == e)
```