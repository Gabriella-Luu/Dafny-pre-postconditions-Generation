```dafny
method FindEvenNumbers(arr: array<int>) returns (evenList: seq<int>)
  ensures forall x :: x in evenList ==> x % 2 == 0
  ensures forall k :: 0 <= k < arr.Length && arr[k] % 2 == 0 ==> arr[k] in evenList
  ensures forall i, j :: 0 <= i < j < |evenList| ==> (exists a, b :: 0 <= a < b < arr.Length && evenList[i] == arr[a] && evenList[j] == arr[b])
{
  // Implementation not shown
}
```