```dafny
method findParity(n: int) returns (res: bool)
  requires true  // No specific precondition as the method should work for any integer
  ensures res <==> (n % 2 != 0)  // The result should be true if and only if the number is odd
{
  // Method implementation goes here
}
```