```dafny
method overlapping(list1:seq<int>, list2:seq<int>) returns (res:bool)
  requires |list1| > 0 && |list2| > 0 // The sequences should not be empty
  ensures res == true ==> (exists i :: 0 <= i < |list1| && list1[i] in list2) // If the result is true, there exists a value in list1 that is also in list2
  ensures res == false ==> (forall i :: 0 <= i < |list1| ==> list1[i] !in list2) // If the result is false, all values in list1 are not in list2
{
  // Method implementation
}
```