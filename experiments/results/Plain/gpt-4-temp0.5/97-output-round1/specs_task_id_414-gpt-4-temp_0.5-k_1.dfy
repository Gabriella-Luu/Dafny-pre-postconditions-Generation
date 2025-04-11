```dafny
method overlapping(list1:seq<int>,list2:seq<int>) returns (res:bool)
  requires list1 != null && list2 != null // The input sequences must not be null
  ensures forall i:int :: 0 <= i < |list1| ==> (res == true <==> list1[i] in list2) // If any value from list1 exists in list2, the result is true. Otherwise, the result is false.
```