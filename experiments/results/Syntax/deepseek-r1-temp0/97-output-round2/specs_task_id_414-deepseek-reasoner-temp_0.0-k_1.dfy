```dafny
method overlapping(list1:seq<int>,list2:seq<int>) returns (res:bool)
  ensures res <==> (exists x :: x in list1 && x in list2)
{
  // Method implementation not provided
}
```