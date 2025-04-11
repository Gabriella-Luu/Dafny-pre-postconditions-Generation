```dafny
method evenPosition(list: seq<int>) returns (res:bool)
  requires forall i :: 0 <= i < |list| ==> list[i] >= 0 // Each element in the list is non-negative
  ensures res == forall i :: 0 <= i < |list| && i % 2 == 0 ==> list[i] % 2 == 0 // The method returns true if all even indexed elements in the list are even, and false otherwise
```