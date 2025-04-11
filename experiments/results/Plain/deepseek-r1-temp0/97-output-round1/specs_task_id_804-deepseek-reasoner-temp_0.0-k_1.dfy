```dafny
method isProductEven(arr:array<int>) returns (res:bool)
  ensures res <==> (exists k | 0 <= k < arr.Length :: arr[k] % 2 == 0)
{
  // Implementation would check if any element is even
}
```