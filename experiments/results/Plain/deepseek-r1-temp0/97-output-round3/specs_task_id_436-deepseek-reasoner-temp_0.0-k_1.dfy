```dafny
method negNos(list1: array<int>) returns (res: array<int>)
   requires list1 != null
   ensures res != null
   ensures list1.Length == old(list1.Length)
   ensures forall i | 0 <= i < list1.Length :: list1[i] == old(list1[i])
   ensures res.Length == |{ k | 0 <= k < list1.Length && list1[k] < 0 }|
   ensures forall j | 0 <= j < res.Length :: res[j] < 0
   ensures forall j | 0 <= j < res.Length :: exists i | 0 <= i < list1.Length ::
       list1[i] == res[j] && list1[i] < 0 &&
       (|{ k | 0 <= k < i && list1[k] < 0 }| == j)
{
   // Implementation goes here
}
```