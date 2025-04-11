```dafny
method negNos(list1: array<int>) returns (res: array<int>)
    requires list1 != null
    ensures forall i :: 0 <= i < res.Length ==> res[i] < 0
    ensures forall i :: 0 <= i < list1.Length && list1[i] < 0 ==> exists j :: 0 <= j < res.Length && res[j] == list1[i]
    ensures forall i :: 0 <= i < res.Length ==> exists j :: 0 <= j < list1.Length && list1[j] == res[i]
```
The preconditions (requires) are:
1. The input array list1 should not be null.

The postconditions (ensures) are:
1. All the elements in the output array res are negative.
2. For every negative number in the input array list1, there exists a corresponding number in the output array res.
3. For every number in the output array res, there exists a corresponding number in the input array list1.