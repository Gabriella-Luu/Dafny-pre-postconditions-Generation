```dafny
method checkMinHeap (arr1:array<int>) returns (res:bool)
    ensures res == (arr1 != null && (forall i :: 0 <= i < arr1.Length ==> 
        ( (2*i + 1 < arr1.Length ==> arr1[i] <= arr1[2*i + 1]) && 
          (2*i + 2 < arr1.Length ==> arr1[i] <= arr1[2*i + 2]) )))
```