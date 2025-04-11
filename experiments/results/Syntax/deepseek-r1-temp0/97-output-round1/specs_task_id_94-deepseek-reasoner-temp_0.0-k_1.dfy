```dafny
method indexMinimum(list: array<seq<int>>) returns (res:int)
requires list.Length >= 1
requires forall i | 0 <= i < list.Length :: |list[i]| >= 2
ensures exists k | 0 <= k < list.Length :: 
    res == list[k][0] && 
    (forall j | 0 <= j < list.Length :: list[j][1] >= list[k][1]) && 
    (forall j | 0 <= j < k :: list[j][1] > list[k][1])
```