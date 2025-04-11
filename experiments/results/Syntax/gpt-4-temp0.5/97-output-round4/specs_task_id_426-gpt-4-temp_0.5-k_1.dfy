```dafny
method filterOddNumbers (arr: array<int>) returns (odds: seq<int>)
  requires arr != null
  ensures |odds| <= arr.Length
  ensures forall i :: 0 <= i < |odds| ==> odds[i] % 2 == 1
  ensures forall i :: 0 <= i < arr.Length ==> (arr[i] % 2 == 1) ==> (exists j :: 0 <= j < |odds| && odds[j] == arr[i])
```