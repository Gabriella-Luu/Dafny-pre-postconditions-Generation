```dafny
method filterOddNumbers(arr: array<int>) returns (odds: seq<int>)
  requires arr != null // the input array must not be null
  ensures forall k :: 0 <= k < |odds| ==> odds[k] % 2 == 1 // all elements in the output sequence are odd
  ensures forall k :: 0 <= k < |arr| ==> (arr[k] % 2 == 1 ==> arr[k] in odds) // any odd element in the input array is in the output sequence
  ensures forall k :: 0 <= k < |odds| ==> odds[k] in arr // any element in the output sequence is in the input array
  ensures |odds| <= |arr| // the length of the output sequence is less than or equal to the length of the input array
{}
```