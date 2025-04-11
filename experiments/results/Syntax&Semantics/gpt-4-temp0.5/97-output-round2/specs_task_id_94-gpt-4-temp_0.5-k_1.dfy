```dafny
method indexMinimum(list: array<seq<int>>) returns (res:int)
    requires list != null && list.Length > 0;
    requires forall i :: 0 <= i < list.Length ==> |list[i]| >= 2;
    ensures 0 <= res < list.Length;
    ensures forall i :: 0 <= i < list.Length ==> list[res][1] <= list[i][1];
    ensures list[res][1] == min(j | exists i :: 0 <= i < list.Length && j == list[i][1]);
```