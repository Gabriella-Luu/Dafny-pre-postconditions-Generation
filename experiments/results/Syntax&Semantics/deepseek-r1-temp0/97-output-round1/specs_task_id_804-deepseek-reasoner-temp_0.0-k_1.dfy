```dafny
method isProductEven(arr:array<int>) returns (res:bool)
  ensures res <==> (exists i :: 0 <= i < arr.Length && arr[i] % 2 == 0)
{
  // Implementation not required for contract design
}
```