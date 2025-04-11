```dafny
method swapNumbers(a:int, b:int) returns (res: seq<int>)
  ensures |res| == 2  // Sequence contains exactly two elements
  ensures res[0] == b // First element matches second input parameter
  ensures res[1] == a // Second element matches first input parameter
{
  // Implementation would create [b, a] sequence here
}
```