```dafny
method FindFirstOccurrence(arr: array<int>, target: int) returns (index: int)
  requires sorted(arr)
  ensures index == -1 || (0 <= index < arr.Length)
  ensures index != -1 ==> arr[index] == target
  ensures index != -1 ==> forall i :: 0 <= i < index ==> arr[i] != target
  ensures index == -1 ==> forall i :: 0 <= i < arr.Length ==> arr[i] != target
{
  // Implementation logic would go here
}
```