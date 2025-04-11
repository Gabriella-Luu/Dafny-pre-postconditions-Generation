```dafny
method overlapping(list1:seq<int>,list2:seq<int>) returns (res:bool)
  requires forall i :: 0 <= i < |list1| ==> list1[i] >= 0
  requires forall j :: 0 <= j < |list2| ==> list2[j] >= 0
  ensures res <==> (exists k :: 0 <= k < |list1| && list1[k] in list2)
```