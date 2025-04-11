```dafny
method oddSplit(arr: array<int>) returns (oddList: seq<int>)
  requires arr != null
  ensures |oddList| <= arr.Length
  ensures forall i :: 0 <= i < |oddList| ==> oddList[i] % 2 == 1
  ensures forall i :: 0 <= i < |oddList| ==> (exists j :: 0 <= j < arr.Length && arr[j] == oddList[i])
  ensures forall i :: 0 <= i < arr.Length && arr[i] % 2 == 1 ==> (exists j :: 0 <= j < |oddList| && oddList[j] == arr[i])
```
This method signature and pre/postconditions ensure that the returned sequence `oddList` only contains odd numbers from the input array `arr`. It also ensures that all odd numbers in `arr` are in `oddList`.