```dafny
method removeElements(list1: array<int>, list2: array<int>) returns (res: array<int>)
  requires list1 != null && list2 != null
  ensures res != null
  ensures res[..] == seq x | x in list1[..] where x !in list2[..]
  ensures multiset(res[..]) == multiset(list1[..]) - multiset(x | x in list1[..] && x in list2[..])
```