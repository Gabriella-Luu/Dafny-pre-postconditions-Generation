```dafny
method checkMinHeap(arr1: array<int>) returns (res: bool)
    requires arr1 != null
    ensures (res == true) <==> (forall i :: 0 <= i < arr1.Length/2 ==> (2*i+1 < arr1.Length ==> arr1[i] <= arr1[2*i+1]) && (2*i+2 < arr1.Length ==> arr1[i] <= arr1[2*i+2]))
```