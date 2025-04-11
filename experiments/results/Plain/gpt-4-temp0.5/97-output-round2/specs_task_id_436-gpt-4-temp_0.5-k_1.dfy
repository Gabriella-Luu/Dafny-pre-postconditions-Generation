```dafny
method negNos(list1:array<int>) returns (res:array<int>)
    requires list1 != null
    ensures forall i :: 0 <= i < res.Length ==> res[i] < 0
    ensures forall i :: 0 <= i < list1.Length && list1[i] < 0 ==> exists j :: 0 <= j < res.Length && res[j] == list1[i]
    ensures forall i :: 0 <= i < res.Length ==> exists j :: 0 <= j < list1.Length && list1[j] == res[i]
```
The first precondition `requires list1 != null` makes sure that the input array is not null.

The first postcondition `ensures forall i :: 0 <= i < res.Length ==> res[i] < 0` ensures that all elements in the result array are negative.

The second postcondition `ensures forall i :: 0 <= i < list1.Length && list1[i] < 0 ==> exists j :: 0 <= j < res.Length && res[j] == list1[i]` ensures that if there is a negative number in the input array, it will be in the result array.

The third postcondition `ensures forall i :: 0 <= i < res.Length ==> exists j :: 0 <= j < list1.Length && list1[j] == res[i]` ensures that all numbers in the result array are from the input array.