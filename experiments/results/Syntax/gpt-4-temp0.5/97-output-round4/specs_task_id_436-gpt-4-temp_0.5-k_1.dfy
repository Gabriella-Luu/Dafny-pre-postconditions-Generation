```dafny
method negNos(list1: array<int>) returns (res: array<int>)
  requires list1 != null // Ensures the input array is not null
  ensures res != null // Ensures the output array is not null
  ensures forall i :: 0 <= i < res.Length ==> res[i] < 0 // Ensures all elements in the result are negative
  ensures forall i :: 0 <= i < res.Length ==> (exists j :: 0 <= j < list1.Length && list1[j] == res[i]) // Ensures all elements in the result exist in the input array
  ensures forall i :: 0 <= i < list1.Length && list1[i] < 0 ==> (exists j :: 0 <= j < res.Length && res[j] == list1[i]) // Ensures all negative elements in the input array exist in the result
{
}
```