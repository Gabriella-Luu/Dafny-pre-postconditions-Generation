```dafny
method findMinLength (list: seq<seq<int>>) returns (res:int)
   requires |list| > 0 // The input list must not be empty
   ensures forall i :: 0 <= i < |list| ==> |list[i]| >= res // All sublists have length >= result
   ensures exists i :: 0 <= i < |list| && |list[i]| == res // At least one sublist has the minimal length
{
   // Implementation not shown
}
```