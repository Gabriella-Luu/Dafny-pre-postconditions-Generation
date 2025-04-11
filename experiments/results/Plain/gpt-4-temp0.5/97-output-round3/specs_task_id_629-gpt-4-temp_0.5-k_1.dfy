```dafny
method FindEvenNumbers(arr: array<int>) returns (evenList: seq<int>)
  requires arr != null // The input array should not be null
  ensures forall k :: 0 <= k < |evenList| ==> evenList[k] % 2 == 0 // All numbers in the returned sequence are even
  ensures forall k :: 0 <= k < |arr| && arr[k] % 2 == 0 ==> arr[k] in evenList // All even numbers in the input array are in the returned sequence
  ensures forall k :: 0 <= k < |evenList| ==> exists j :: 0 <= j < |arr| && arr[j] == evenList[k] // All numbers in the returned sequence are from the input array
{
  // Method implementation goes here
}
```