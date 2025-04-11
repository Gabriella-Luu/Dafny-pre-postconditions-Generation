```dafny
method checkK(s1: seq<int>, K:int) returns (res: bool)
  requires s1 != null; // The input sequence must not be null
  ensures res == (K in s1); // The result should be true if K is in the sequence, false otherwise
```