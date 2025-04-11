```dafny
method findMinLength(list: seq<seq<int>>) 
  requires |list| > 0
  requires forall l :: l in list ==> |l| >= 0
  returns (res: int)
  ensures res >= 0
  ensures forall l :: l in list ==> res <= |l|
  ensures exists l :: l in list && res == |l|
```