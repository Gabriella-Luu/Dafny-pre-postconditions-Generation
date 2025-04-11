```dafny
method removeElements(list1:array<int>, list2:array<int>) returns (res:array<int>)
   requires list1 != null
   requires list2 != null
   ensures res != null
   ensures multiset(res[..]) == multiset(list1[..]) - multiset(x in list1[..] | x in list2[..])
   ensures forall i, j | 0 <= i < j < |res| :: exists k, l | 0 <= k < l < |list1| :: res[i] == list1[k] && res[j] == list1[l] && list1[k] !in list2[..] && list1[l] !in list2[..]
{
   // Implementation not provided
}
```