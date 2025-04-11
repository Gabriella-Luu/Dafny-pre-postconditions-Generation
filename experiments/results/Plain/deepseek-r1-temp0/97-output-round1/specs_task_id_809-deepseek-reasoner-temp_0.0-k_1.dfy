```dafny
method checkSmaller (s1: seq<int>, s2: seq<int>) returns (res:bool)
  ensures res == (|s1| == |s2| && (forall i :: 0 <= i < |s1| ==> s2[i] < s1[i]))
{
   // Implementation not shown
}
```