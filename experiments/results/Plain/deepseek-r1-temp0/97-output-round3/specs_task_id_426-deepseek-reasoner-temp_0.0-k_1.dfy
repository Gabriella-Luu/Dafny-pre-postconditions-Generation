```dafny
method filterOddNumbers (arr: array<int>) returns (odds: seq<int>)
  ensures forall x: int :: x in odds ==> x % 2 != 0
  ensures forall i: int :: 0 <= i < arr.Length && arr[i] % 2 != 0 ==> arr[i] in odds
  ensures forall i: int, j: int :: 0 <= i < j < |odds| ==> 
    (exists k: int, l: int :: 0 <= k < l < arr.Length && arr[k] == odds[i] && arr[l] == odds[j])
{
  // Implementation not provided
}
```