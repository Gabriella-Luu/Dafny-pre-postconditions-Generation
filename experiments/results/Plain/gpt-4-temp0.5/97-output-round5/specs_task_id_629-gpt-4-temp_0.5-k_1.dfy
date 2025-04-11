```dafny
method FindEvenNumbers(arr: array<int>) returns (evenList: seq<int>)
  requires arr != null // The input array should not be null
  ensures forall i :: 0 <= i < |evenList| ==> evenList[i] % 2 == 0 // All elements in the returned list are even
  ensures forall i :: 0 <= i < arr.Length && arr[i] % 2 == 0 ==> arr[i] in evenList // All even numbers in the input array are in the returned list
  ensures |evenList| <= arr.Length // The size of the returned list is less than or equal to the size of the input array
{
  // Method implementation goes here
}
```