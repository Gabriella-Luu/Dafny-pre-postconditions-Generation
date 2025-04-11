```dafny
method FindEvenNumbers(arr: array<int>) returns (evenList: seq<int>)
    requires arr != null
    ensures |evenList| <= arr.Length
    ensures forall i :: 0 <= i < |evenList| ==> (evenList[i] % 2 == 0)
    ensures forall j :: 0 <= j < arr.Length && (arr[j] % 2 == 0) ==> (arr[j] in evenList[..])
{
    // Implementation not provided
}
```