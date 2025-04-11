```dafny
method nthNums(list:seq<int>, n:int) returns (res: seq<int>)
   requires n >= 0 // Exponent must be non-negative
   requires n != 0 || (forall x | x in list :: x != 0) // Handle 0^0 undefined case
   ensures |res| == |list| // Result length matches input
   ensures forall i | 0 <= i < |list| :: res[i] == Power(list[i], n) // Each element is nth power
{
   // Implementation not provided
}
```

*Note: This assumes the existence of a helper `Power(x: int, n: int): int` function that correctly computes x^n with appropriate preconditions (n ≥ 0 and x ≠ 0 when n=0).*