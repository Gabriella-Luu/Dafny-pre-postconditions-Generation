```dafny
method negNos(list1:array<int>) returns (res:array<int>)
  requires list1 != null
  ensures res != null
  ensures res[..] == seq(x | x in list1[..] where x < 0)
{
  // Implementation goes here
}
```