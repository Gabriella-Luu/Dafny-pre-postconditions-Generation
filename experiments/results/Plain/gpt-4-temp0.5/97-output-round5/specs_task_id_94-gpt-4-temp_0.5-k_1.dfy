```dafny
method indexMinimum(list: array<seq<int>>) returns (res:int)
  requires list != null && list.Length > 0 && forall i :: 0 <= i < list.Length ==> list[i] != null && |list[i]| >= 2
  ensures 0 <= res < list.Length && forall i :: 0 <= i < list.Length ==> list[res][1] <= list[i][1]
{}
```