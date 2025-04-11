```dafny
method filterOddNumbers(arr: array<int>) returns (odds: seq<int>)
  requires arr != null // This requirement is implicit in Dafny for arrays, thus normally not needed, but included for clarity in this context.
  ensures forall i :: 0 <= i < arr.Length ==> (arr[i] % 2 != 0) ==> (arr[i] in odds)
  ensures forall j :: 0 <= j < |odds| ==> (odds[j] % 2 != 0)
  ensures forall k :: 0 <= k < |odds| ==> exists l :: 0 <= l < arr.Length && arr[l] == odds[k]
  ensures |odds| <= arr.Length
```