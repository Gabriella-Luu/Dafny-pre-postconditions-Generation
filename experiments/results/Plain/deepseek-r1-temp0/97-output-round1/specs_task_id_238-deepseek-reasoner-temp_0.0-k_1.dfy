```dafny
method numberOfSubstrings(str:string) returns (res:int)
  // Precondition: The input string must not be null
  requires str != null
  // Postcondition: The result equals the formula for total non-empty substrings n(n+1)/2
  ensures res == (|str| * (|str| + 1)) / 2
{
  // Implementation would calculate (str.Length * (str.Length + 1)) / 2 here
}
```