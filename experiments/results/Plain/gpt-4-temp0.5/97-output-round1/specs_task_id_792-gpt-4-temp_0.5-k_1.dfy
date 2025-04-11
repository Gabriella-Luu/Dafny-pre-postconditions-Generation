```dafny
method countList (list:seq<seq<int>>) returns (res:int)
  requires list != null // The input list must not be null
  ensures res == |list| // The result must be equal to the length of the input list
```