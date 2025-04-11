```dafny
method FindFirstOccurrence(arr: array<int>, target: int) returns (index: int)
  requires forall i, j :: 0 <= i < j < arr.Length ==> arr[i] <= arr[j]
  ensures index == -1 || (0 <= index < arr.Length && arr[index] == target)
  ensures index != -1 ==> (forall i :: 0 <= i < index ==> arr[i] < target)
  ensures index == -1 ==> (forall i :: 0 <= i < arr.Length ==> arr[i] != target)
{
  // Implementation not provided
}
```