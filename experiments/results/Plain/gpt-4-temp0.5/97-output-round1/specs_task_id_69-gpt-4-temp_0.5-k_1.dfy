```dafny
method isSublist(list: seq<seq<int>>, sub: seq<int>) returns (res: bool)
  requires list != null && sub != null 
  requires forall l :: l in list ==> l != null
  ensures res == true <==> exists l :: l in list && l == sub
  ensures res == false <==> forall l :: l in list ==> l != sub
```