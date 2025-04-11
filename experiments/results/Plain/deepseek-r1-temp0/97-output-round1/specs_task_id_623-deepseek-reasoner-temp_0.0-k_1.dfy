```dafny
function pow(x: int, n: int): int
  requires n >= 0
{
  if n == 0 then 1 else x * pow(x, n-1)
}

method nthNums(list: seq<int>, n: int) returns (res: seq<int>)
  requires n >= 0
  requires n != 0 || 0 !in list  // Prevents 0^0 case when n is 0
  ensures |res| == |list|
  ensures forall i | 0 <= i < |list| :: res[i] == pow(list[i], n)
{
  // Method implementation not provided
}
```