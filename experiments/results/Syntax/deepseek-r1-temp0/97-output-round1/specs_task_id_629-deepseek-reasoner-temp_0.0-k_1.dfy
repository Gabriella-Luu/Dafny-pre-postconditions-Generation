```dafny
method FindEvenNumbers(arr: array<int>) returns (evenList: seq<int>)
  ensures forall i :: 0 <= i < |evenList| ==> evenList[i] % 2 == 0
  ensures forall x :: x in evenList ==> (exists j :: 0 <= j < arr.Length && arr[j] == x)
  ensures forall j :: 0 <= j < arr.Length && (arr[j] % 2 == 0) ==> (exists i :: 0 <= i < |evenList| && evenList[i] == arr[j])
  ensures forall j, k :: 0 <= j < k < arr.Length && (arr[j] % 2 == 0) && (arr[k] % 2 == 0) ==> (exists i_j, i_k :: 0 <= i_j < i_k < |evenList| && evenList[i_j] == arr[j] && evenList[i_k] == arr[k])
{
  // Implementation not provided
}
```