```dafny
method filterOddNumbers(arr: array<int>) returns (odds: seq<int>)
  requires arr != null
  ensures |odds| <= arr.Length
  ensures forall i :: 0 <= i < |odds| ==> odds[i] % 2 == 1
  ensures forall j :: 0 <= j < arr.Length && arr[j] % 2 == 1 ==> arr[j] in odds[..]
{
  // Implementation not provided
}
```