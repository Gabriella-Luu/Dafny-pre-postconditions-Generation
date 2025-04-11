```dafny
method FindFirstOccurrence(arr: array<int>, target: int) returns (index: int)
  requires arr != null
  requires forall i, j :: 0 <= i < j < arr.Length ==> arr[i] <= arr[j]
  ensures 0 <= index <= arr.Length
  ensures (index < arr.Length ==> arr[index] == target) && (forall k :: 0 <= k < index ==> arr[k] != target)
  ensures index == arr.Length ==> forall k :: 0 <= k < arr.Length ==> arr[k] != target
{
  // Implementation not provided
}
```