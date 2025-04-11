```dafny
method MinOfThree(a: int, b: int, c: int) returns (min: int)
  requires a >= int.MinValue && a <= int.MaxValue
  requires b >= int.MinValue && b <= int.MaxValue
  requires c >= int.MinValue && c <= int.MaxValue
  ensures min <= a && min <= b && min <= c 
  ensures min == a || min == b || min == c
{
  // Method implementation goes here
}
```