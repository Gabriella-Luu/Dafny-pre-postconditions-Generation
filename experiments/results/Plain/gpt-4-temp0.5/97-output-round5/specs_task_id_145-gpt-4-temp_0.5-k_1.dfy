Here is the Dafny method with preconditions and postconditions:

```dafny
method maxAbsDiff(arr: array<int>) returns (res: int)
  requires arr != null && arr.Length > 1
  ensures forall i, j :: 0 <= i < arr.Length && 0 <= j < arr.Length ==> abs(arr[i] - arr[j]) <= res
  ensures exists i, j :: 0 <= i < arr.Length && 0 <= j < arr.Length && abs(arr[i] - arr[j]) == res
{
  // Method implementation goes here
}
```

The preconditions ensure that the array is not null and it has at least 2 elements. The postconditions ensure that the result is the maximum absolute difference between any two elements in the array.