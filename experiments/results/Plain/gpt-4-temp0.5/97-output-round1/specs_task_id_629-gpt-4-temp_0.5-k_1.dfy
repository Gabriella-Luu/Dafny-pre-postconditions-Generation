```dafny
method FindEvenNumbers(arr: array<int>) returns (evenList: seq<int>)
    requires arr != null  // The input array must not be null
    ensures forall k :: 0 <= k < |evenList| ==> evenList[k] % 2 == 0  // All numbers in the returned list are even
    ensures forall k :: 0 <= k < |arr| && arr[k] % 2 == 0 ==> arr[k] in evenList  // If a number in the input array is even, it is in the returned list
    ensures forall k :: 0 <= k < |evenList| ==> (exists j :: 0 <= j < |arr| && arr[j] == evenList[k])  // Every number in the returned list is from the input array
```