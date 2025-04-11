```dafny
method LastPosition(arr: array<int>, elem: int) returns (pos: int)
  requires forall i, j | 0 <= i < j < arr.Length :: arr[i] <= arr[j]
  ensures (pos != -1 ==> 0 <= pos < arr.Length && arr[pos] == elem && (forall i | pos < i < arr.Length :: arr[i] > elem)) 
  && (pos == -1 ==> forall i | 0 <= i < arr.Length :: arr[i] != elem)
{
  // Implementation not provided
}
```