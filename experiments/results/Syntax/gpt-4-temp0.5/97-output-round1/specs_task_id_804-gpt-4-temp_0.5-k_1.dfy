```dafny
method isProductEven(arr: array<int>) returns (res: bool)
    requires arr != null
    requires arr.Length > 0
    ensures (res <==> (exists i :: 0 <= i < arr.Length && arr[i] % 2 == 0))
```