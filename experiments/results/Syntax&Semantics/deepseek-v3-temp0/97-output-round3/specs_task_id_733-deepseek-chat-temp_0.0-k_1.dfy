```dafny
method FindFirstOccurrence(arr: array<int>, target: int) returns (index: int)
  requires arr != null
  requires forall i, j :: 0 <= i < j < arr.Length ==> arr[i] <= arr[j]  // Array is sorted
  ensures 0 <= index <= arr.Length
  ensures (index < arr.Length ==> arr[index] == target) && (forall i :: 0 <= i < index ==> arr[i] != target)  // Correctness and minimality
  ensures index == arr.Length ==> forall i :: 0 <= i < arr.Length ==> arr[i] != target  // Target not found
{
  // Implementation not provided
}
```