```dafny
method removeOdd(arr: array<int>) returns (evenList: seq<int>)
   requires arr != null
   ensures forall x :: x in evenList ==> x % 2 == 0
   ensures forall k :: 0 <= k < arr.Length && arr[k] % 2 == 0 ==> arr[k] in evenList
   ensures forall i, j :: 0 <= i < j < |evenList| ==> 
      (exists m, n :: 0 <= m < n < arr.Length && evenList[i] == arr[m] && evenList[j] == arr[n])
{
   // Method implementation would go here
}
```