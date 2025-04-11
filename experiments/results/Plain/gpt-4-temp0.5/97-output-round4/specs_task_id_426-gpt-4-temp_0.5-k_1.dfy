```dafny
method filterOddNumbers (arr: array<int>) returns (odds: seq<int>)
  requires arr != null
  ensures forall k :: 0 <= k < |odds| ==> odds[k] % 2 == 1
  ensures forall k :: 0 <= k < |arr| ==> (arr[k] % 2 == 1 <==> arr[k] in odds)
```