```dafny
method oddSplit(arr: array<int>) returns (oddList: seq<int>)
  requires arr != null
  ensures (forall i :: 0 <= i < |oddList| ==> oddList[i] % 2 == 1)
  ensures (forall i :: 0 <= i < arr.Length ==> (arr[i] % 2 == 1) ==> (exists j :: 0 <= j < |oddList| && oddList[j] == arr[i]))
  ensures (forall i :: 0 <= i < |oddList| ==> (exists j :: 0 <= j < arr.Length && arr[j] == oddList[i]))
{
  // Method implementation goes here
}
```

The preconditions and postconditions defined above ensure that:
- The input array `arr` is not null.
- All elements in the returned sequence `oddList` are odd.
- For every odd number in the input array `arr`, there exists a corresponding number in the sequence `oddList`.
- For every number in the sequence `oddList`, there exists a corresponding number in the input array `arr`.