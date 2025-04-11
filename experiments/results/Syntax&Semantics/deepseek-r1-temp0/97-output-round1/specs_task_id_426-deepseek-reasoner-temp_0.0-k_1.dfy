```dafny
method filterOddNumbers (arr: array<int>) returns (odds: seq<int>)
  ensures forall elem :: elem in odds ==> elem % 2 == 1
  ensures forall j :: (0 <= j < arr.Length && arr[j] % 2 == 1) ==> arr[j] in odds
  ensures forall j1, j2 :: (0 <= j1 < j2 < arr.Length && arr[j1] % 2 == 1 && arr[j2] % 2 == 1) ==> (exists k1, k2 :: 0 <= k1 < k2 < |odds| && odds[k1] == arr[j1] && odds[k2] == arr[j2])
{
  // Implementation not provided
}
```