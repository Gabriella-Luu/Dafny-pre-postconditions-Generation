```dafny
method filterOddNumbers (arr: array<int>) returns (odds: seq<int>)
  requires arr != null // Preconditions
  ensures forall i :: 0 <= i < |arr| ==> (arr[i] % 2 != 0 ==> odds[i] % 2 != 0) // Postconditions: All numbers in the returned sequence are odd
  ensures forall i :: 0 <= i < |odds| ==> odds[i] % 2 != 0 // All numbers in the returned sequence are odd
  ensures |odds| <= |arr| // The length of the returned sequence is less than or equal to the length of the input array
  ensures forall i :: 0 <= i < |odds| ==> exists j :: 0 <= j < |arr| && arr[j] == odds[i] // All numbers in the returned sequence are in the input array
```