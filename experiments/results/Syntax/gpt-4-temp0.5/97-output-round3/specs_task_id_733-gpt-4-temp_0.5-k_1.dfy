```dafny
method FindFirstOccurrence(arr: array<int>, target: int) returns (index: int)
  requires arr.Length > 0 // Array must not be empty
  requires forall i, j :: 0 <= i < j < arr.Length ==> arr[i] <= arr[j] // Array must be sorted
  ensures index >= -1 && index < arr.Length // Index is within bounds or -1 if not found
  ensures index == -1 || (arr[index] == target && (index == 0 || arr[index-1] < target)) // Correct index of first occurrence or -1 if not found
{
}
```