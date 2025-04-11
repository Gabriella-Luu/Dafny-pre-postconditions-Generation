```dafny
method negNos(list1:array<int>) returns (res:array<int>)
  requires list1 != null
  ensures forall i :: 0 <= i < res.Length ==> res[i] < 0
  ensures forall i :: 0 <= i < list1.Length && list1[i] < 0 ==> exists j :: 0 <= j < res.Length && res[j] == list1[i]
  ensures forall j :: 0 <= j < res.Length ==> exists i :: 0 <= i < list1.Length && list1[i] == res[j]
```
The preconditions are:
- The input array is not null.

The postconditions are:
- All elements in the result array are negative.
- Every negative number in the input array appears in the result array.
- Every number in the result array is from the input array.