```dafny
method isThreeEqual(a: int, b: int, c: int) returns (res: int)
  // Precondition: None needed as all integer inputs are valid
  // Postconditions cover all possible equality combinations
  ensures (a == b && b == c) ==> res == 3;
  ensures ((a == b && a != c) || (a == c && a != b) || (b == c && b != a)) ==> res == 2;
  ensures (a != b && a != c && b != c) ==> res == 0;
{
  // Method implementation would be here
}
```