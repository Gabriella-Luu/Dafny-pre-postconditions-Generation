```dafny
method removeOdd(arr: array<int>) returns (evenList: seq<int>)
  ensures forall i :: 0 <= i < |evenList| ==> evenList[i] % 2 == 0
  ensures forall j :: 0 <= j < arr.Length && arr[j] % 2 == 0 ==> exists m :: 0 <= m < |evenList| && evenList[m] == arr[j]
  ensures forall m1, m2 :: 0 <= m1 < m2 < |evenList| ==> exists j1, j2 :: 0 <= j1 < j2 < arr.Length && evenList[m1] == arr[j1] && evenList[m2] == arr[j2] && arr[j1] % 2 == 0 && arr[j2] % 2 == 0
{
  // Implementation not shown
}
```