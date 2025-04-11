```dafny
method oddSplit(arr: array<int>) returns (oddList: seq<int>)
  requires arr != null  // The input array should not be null
  ensures forall i :: 0 <= i < |oddList| ==> oddList[i] % 2 != 0  // All elements in the returned sequence are odd
  ensures forall i :: 0 <= i < |arr| && arr[i] % 2 != 0 ==> arr[i] in oddList  // All odd numbers in the input array are in the returned sequence
  ensures forall i :: 0 <= i < |oddList| ==> (exists j :: 0 <= j < |arr| && arr[j] == oddList[i])  // All numbers in the returned sequence are in the input array
{}
```