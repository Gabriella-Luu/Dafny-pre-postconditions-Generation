```dafny
method removeOdd(arr: array<int>) returns (evenList: seq<int>)
  requires arr != null // The input array should not be null
  ensures forall k :: 0 <= k < |evenList| ==> evenList[k] % 2 == 0 // All elements in the returned sequence are even
  ensures forall k :: 0 <= k < |arr| && arr[k] % 2 == 0 ==> arr[k] in evenList // All even elements in the input array are in the returned sequence
  ensures forall k, j :: 0 <= k < j < |arr| && arr[k] % 2 == 0 && arr[j] % 2 == 0 ==> (arr[k] in evenList && arr[j] in evenList && arr[k] == arr[j] ==> multiset(evenList)[arr[k]] == multiset({i in arr[..] | i % 2 == 0})[arr[k]]) // The frequency of each even number in the returned sequence is the same as in the input array
{
  // Method implementation goes here
}
```