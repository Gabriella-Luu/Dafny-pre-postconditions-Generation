```dafny
method isProductEven(arr:array<int>) returns (res:bool)
  ensures res <==> (exists j :: 0 <= j < arr.Length && (arr[j] % 2) == 0)
```