```dafny
method FindFirstOccurrence(arr: array<int>, target: int) returns (index: int)
    requires arr != null && arr.Length > 0 // the array must not be null and must contain at least one element
    requires forall i, j :: 0 <= i < j < arr.Length ==> arr[i] <= arr[j] // the array must be sorted in non-decreasing order
    ensures 0 <= index < arr.Length ==> arr[index] == target // if the index is within array bounds, the element at that index is the target
    ensures index == -1 ==> forall i :: 0 <= i < arr.Length ==> arr[i] != target // if the index is -1, the target is not in the array
    ensures forall i :: 0 <= i < arr.Length && arr[i] == target ==> index <= i // the returned index is the first occurrence of the target
{
    // method implementation
}
```