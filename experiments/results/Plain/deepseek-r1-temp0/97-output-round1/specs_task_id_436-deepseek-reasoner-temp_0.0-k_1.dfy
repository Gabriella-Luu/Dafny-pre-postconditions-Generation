```dafny
method negNos(list1:array<int>) returns (res:array<int>)
   requires list1 != null
   ensures res != null
   ensures res[..] == [x | x in list1[..] if x < 0]
{
   // Implementation not provided
}
```