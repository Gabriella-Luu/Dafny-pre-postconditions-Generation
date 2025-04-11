```dafny
method oddSplit(arr: array<int>) returns (oddList: seq<int>)
  requires arr != null // Input array must not be null
  ensures forall i :: 0 <= i < |oddList| ==> oddList[i] % 2 == 1 // All elements in the returned sequence are odd
  ensures forall i :: 0 <= i < arr.Length && arr[i] % 2 == 1 ==> arr[i] in oddList // All odd elements in the input array are in the returned sequence
  ensures |oddList| <= arr.Length // The length of the returned sequence is less than or equal to the length of the input array
{
  // Method implementation goes here
}
```