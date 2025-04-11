```dafny
method indexMinimum(list: array<seq<int>>) returns (res: int)
  requires list != null
  requires list.Length > 0
  requires forall i :: 0 <= i < list.Length ==> |list[i]| >= 2
  ensures 0 <= res < list.Length
  ensures forall i :: 0 <= i < list.Length ==> list[i][1] >= list[res][1]
  ensures exists j :: 0 <= j < list.Length && list[j][1] == list[res][1]
{
  // Implementation not provided
}
```