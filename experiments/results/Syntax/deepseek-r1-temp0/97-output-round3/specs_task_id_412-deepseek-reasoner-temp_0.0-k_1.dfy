```dafny
method removeOdd(arr: array<int>) returns (evenList: seq<int>)
    ensures forall e :: e in evenList ==> e % 2 == 0
    ensures forall i :: 0 <= i < arr.Length && arr[i] % 2 == 0 ==> arr[i] in evenList
    ensures forall i :: 0 <= i < arr.Length && arr[i] % 2 == 0 ==> (exists k :: 0 <= k < |evenList| && evenList[k] == arr[i] && (forall j :: 0 <= j < i && arr[j] % 2 == 0 ==> (exists l :: 0 <= l < k && evenList[l] == arr[j])))
{
    // Implementation not provided
}
```