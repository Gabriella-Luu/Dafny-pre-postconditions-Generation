```dafny
method FindEvenNumbers(arr: array<int>) returns (evenList: seq<int>)
  requires arr != null
  ensures |evenList| <= arr.Length
  ensures forall i :: 0 <= i < |evenList| ==> evenList[i] % 2 == 0
  ensures forall k :: 0 <= k < arr.Length && arr[k] % 2 == 0 ==> arr[k] in evenList
  ensures forall i, j :: 0 <= i < j < |evenList| ==> evenList[i] != evenList[j]
{
  // Implementation not provided
}
```