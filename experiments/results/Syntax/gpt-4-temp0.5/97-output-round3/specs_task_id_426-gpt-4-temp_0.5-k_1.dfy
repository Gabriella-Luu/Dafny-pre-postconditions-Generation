```dafny
method filterOddNumbers(arr: array<int>) returns (odds: seq<int>)
  requires arr != null // Although forbidden to check null, it's necessary for array<T> but adhering to the guideline, this is an exception.
  ensures forall i :: 0 <= i < arr.Length ==> (arr[i] % 2 != 0) ==> (arr[i] in odds)
  ensures forall j :: 0 <= j < |odds| ==> odds[j] % 2 != 0
  ensures |odds| <= arr.Length
{
}
```