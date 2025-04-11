```dafny
method negNos(list1: array<int>) returns (res: array<int>)
  requires list1 != null
  ensures res != null
  ensures forall i :: 0 <= i < res.Length ==> res[i] < 0
  ensures forall j :: 0 <= j < list1.Length && list1[j] < 0 ==> exists k :: 0 <= k < res.Length && res[k] == list1[j]
  ensures forall k :: 0 <= k < res.Length ==> exists j :: 0 <= j < list1.Length && list1[j] == res[k]
```
### Explanation:
- **Preconditions (`requires`)**:
  - `list1 != null`: Ensures that the input array is not null.
  
- **Postconditions (`ensures`)**:
  - `res != null`: Ensures that the returned array is not null.
  - `forall i :: 0 <= i < res.Length ==> res[i] < 0`: Ensures that every element in the result array is negative.
  - `forall j :: 0 <= j < list1.Length && list1[j] < 0 ==> exists k :: 0 <= k < res.Length && res[k] == list1[j]`: Ensures that every negative number in the input array is present in the result array.
  - `forall k :: 0 <= k < res.Length ==> exists j :: 0 <= j < list1.Length && list1[j] == res[k]`: Ensures that every element in the result array comes from the input array.

These conditions collectively ensure that the method correctly filters and returns all negative numbers from the input array.