```dafny
method LastPosition(arr: array<int>, elem: int) returns (pos: int)
  requires forall i, j :: 0 <= i < j < arr.Length ==> arr[i] <= arr[j]
  ensures pos != -1 ==> (
    0 <= pos < arr.Length && 
    arr[pos] == elem && 
    (forall k :: pos < k < arr.Length ==> arr[k] != elem)
  )
  ensures pos == -1 ==> (
    forall k :: 0 <= k < arr.Length ==> arr[k] != elem
  )
{
  // Implementation would go here
}
```