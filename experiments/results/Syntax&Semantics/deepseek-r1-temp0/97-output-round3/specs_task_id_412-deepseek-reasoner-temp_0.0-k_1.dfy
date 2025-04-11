```dafny
method removeOdd(arr: array<int>) returns (evenList: seq<int>)
  ensures forall x :: x in evenList ==> x % 2 == 0
  ensures forall i :: 0 <= i < arr.Length && arr[i] % 2 == 0 ==> arr[i] in evenList
  ensures forall m, n | 0 <= m < n < |evenList| :: exists i, j :: 0 <= i < j < arr.Length && evenList[m] == arr[i] && evenList[n] == arr[j]
{
  // Implementation not provided
}
```