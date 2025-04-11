```dafny
method removeElements(list1:array<int>, list2:array<int>) returns (res:array<int>)
  requires list1 != null && list2 != null
  ensures forall i :: 0 <= i < list1.Length ==> (list1[i] in list2 ==> !(list1[i] in res))
  ensures forall i :: 0 <= i < res.Length ==> (res[i] in list1 && !(res[i] in list2))
  ensures res.Length <= list1.Length
{
  // Method implementation goes here
}
```