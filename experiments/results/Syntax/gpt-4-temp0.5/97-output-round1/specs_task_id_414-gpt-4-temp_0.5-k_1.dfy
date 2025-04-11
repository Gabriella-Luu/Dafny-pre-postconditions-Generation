```dafny
method overlapping(list1:seq<int>,list2:seq<int>) returns (res:bool)
  requires forall i :: 0 <= i < |list1| ==> list1[i] >= 0
  requires forall i :: 0 <= i < |list2| ==> list2[i] >= 0
  ensures res <==> exists i :: 0 <= i < |list1| && (list1[i] in list2)
```