```dafny
method removeOdd(arr: array<int>) returns (evenList: seq<int>)
  requires arr != null  // The input array must not be null
  ensures forall i :: 0 <= i < |evenList| ==> evenList[i] % 2 == 0  // All elements in the returned sequence are even
  ensures forall i :: 0 <= i < |arr| && arr[i] % 2 == 0 ==> arr[i] in evenList  // All even elements in the input array are in the returned sequence
  ensures forall i :: 0 <= i < |arr| && arr[i] % 2 != 0 ==> !(arr[i] in evenList)  // No odd elements in the input array are in the returned sequence
{
   // Method implementation goes here
}
```