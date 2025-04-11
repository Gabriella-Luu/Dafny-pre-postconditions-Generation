```dafny
method oddSplit(arr: array<int>) returns (oddList: seq<int>)
  requires arr != null // The input array must not be null
  ensures forall i :: 0 <= i < |oddList| ==> oddList[i] % 2 == 1 // All elements in the returned sequence are odd
  ensures forall i :: 0 <= i < |arr| && arr[i] % 2 == 1 ==> arr[i] in oddList // All odd elements in the input array are in the returned sequence
  ensures forall i, j :: 0 <= i < j < |arr| && arr[i] % 2 == 1 && arr[j] % 2 == 1 ==> (arr[i] in oddList && arr[j] in oddList && arr[i] != arr[j] ==> oddList[i] != oddList[j]) // The order of odd elements in the returned sequence is the same as in the input array
{
  // Method implementation goes here
}
```