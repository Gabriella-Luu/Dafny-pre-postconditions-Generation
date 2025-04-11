```dafny
method wordLen(str: string) returns (res: bool)
  requires str != null  // Precondition: Input string must be valid (non-null)
  ensures res == (|str| % 2 == 1)  // Postcondition: Result is true iff string length is odd
```