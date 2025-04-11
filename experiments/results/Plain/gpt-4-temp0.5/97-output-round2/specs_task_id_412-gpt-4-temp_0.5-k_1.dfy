```dafny
method removeOdd(arr: array<int>) returns (evenList: seq<int>)
  requires arr != null // The input array must not be null
  ensures forall i :: 0 <= i < |evenList| ==> evenList[i] % 2 == 0 // All numbers in the output sequence are even
  ensures forall i :: 0 <= i < |arr| && arr[i] % 2 == 0 ==> arr[i] in evenList // All even numbers in the input array are in the output sequence
  ensures forall i, j :: 0 <= i < j < |arr| && arr[i] % 2 == 0 && arr[j] % 2 == 0 ==> (arr[i] in evenList && arr[j] in evenList && arr[i] == arr[j] ==> multiset(evenList)[arr[i]] == multiset({x | var x in arr :: x % 2 == 0})[arr[i]]) // The number of occurrences of each even number in the output sequence is the same as in the input array
{
  // Method implementation goes here
}
```