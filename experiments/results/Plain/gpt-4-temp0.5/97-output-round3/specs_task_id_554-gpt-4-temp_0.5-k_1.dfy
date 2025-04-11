```dafny
method oddSplit(arr: array<int>) returns (oddList: seq<int>)
   requires arr != null // The input array must not be null
   ensures forall i :: 0 <= i < |oddList| ==> oddList[i] % 2 == 1 // All elements in the returned sequence are odd
   ensures forall i :: 0 <= i < arr.Length ==> (arr[i] % 2 == 1 ==> arr[i] in oddList) // All odd elements in the input array are in the returned sequence
   ensures forall i :: 0 <= i < arr.Length ==> (arr[i] % 2 == 0 ==> !(arr[i] in oddList)) // All even elements in the input array are not in the returned sequence
{
   // Method implementation
}
```