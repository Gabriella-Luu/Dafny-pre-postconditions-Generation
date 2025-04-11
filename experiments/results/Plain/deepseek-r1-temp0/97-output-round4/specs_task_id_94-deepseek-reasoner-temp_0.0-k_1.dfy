```dafny
method indexMinimum(list: array<seq<int>>) returns (res: int)
  requires list != null
  requires forall i :: 0 <= i < list.Length ==> |list[i]| >= 2
  ensures 0 <= res < list.Length
  ensures forall j :: 0 <= j < list.Length ==> list[res][1] <= list[j][1]
  ensures forall k :: 0 <= k < res ==> list[k][1] > list[res][1]
{
  // Implementation not provided
}
```