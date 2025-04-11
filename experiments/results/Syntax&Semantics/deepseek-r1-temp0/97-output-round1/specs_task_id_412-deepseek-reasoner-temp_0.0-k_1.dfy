```dafny
method removeOdd(arr: array<int>) returns (evenList: seq<int>)
  ensures forall elem :: elem in evenList ==> elem % 2 == 0
  ensures forall i :: 0 <= i < arr.Length && arr[i] % 2 == 0 ==> arr[i] in evenList
  ensures forall i, j :: 0 <= i < j < arr.Length && arr[i] % 2 == 0 && arr[j] % 2 == 0 ==> (exists k, l :: 0 <= k < l < |evenList| && evenList[k] == arr[i] && evenList[l] == arr[j])
```