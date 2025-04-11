```dafny
method filterOddNumbers (arr: array<int>) returns (odds: seq<int>)
  ensures forall x :: x in odds ==> x % 2 != 0
  ensures forall i :: 0 <= i < arr.Length && arr[i] % 2 != 0 ==> arr[i] in odds
  ensures forall k: int, l: int :: 0 <= k < l < |odds| ==> (exists i: int, j: int :: 0 <= i < j < arr.Length && arr[i] == odds[k] && arr[j] == odds[l])
{
  // Implementation not provided
}
```