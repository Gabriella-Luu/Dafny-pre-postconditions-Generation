```dafny
method removeOdd(arr: array<int>) returns (evenList: seq<int>)
  requires arr != null  // The input array should not be null
  ensures forall i :: 0 <= i < |evenList| ==> evenList[i] % 2 == 0  // All elements in the returned sequence are even
  ensures forall i :: 0 <= i < |arr| && arr[i] % 2 == 0 ==> arr[i] in evenList  // Every even number in the input array is in the returned sequence
  ensures forall i :: 0 <= i < |arr| && arr[i] % 2 != 0 ==> !(arr[i] in evenList)  // No odd number in the input array is in the returned sequence
  ensures |evenList| <= |arr|  // The length of the returned sequence is less than or equal to the length of the input array
{
  // Method implementation goes here
}
```