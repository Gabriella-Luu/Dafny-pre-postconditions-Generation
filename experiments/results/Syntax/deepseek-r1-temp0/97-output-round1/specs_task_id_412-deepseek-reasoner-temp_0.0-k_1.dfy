```dafny
method removeOdd(arr: array<int>) returns (evenList: seq<int>)
  ensures forall k :: 0 <= k < |evenList| ==> evenList[k] % 2 == 0
  ensures forall j :: 0 <= j < arr.Length && arr[j] % 2 == 0 ==> (exists k :: 0 <= k < |evenList| && evenList[k] == arr[j])
  ensures forall x :: x in evenList ==> (exists j :: 0 <= j < arr.Length && arr[j] == x)
  ensures forall k1, k2 :: 0 <= k1 < k2 < |evenList| ==> (exists j1, j2 :: 0 <= j1 < j2 < arr.Length && evenList[k1] == arr[j1] && evenList[k2] == arr[j2])
{
  // Implementation not provided
}
```