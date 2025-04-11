```dafny
method numberOfSubstrings(str: string) returns (res: int)
  requires str != null // The input string should not be null
  ensures res >= 0 // The result should be non-negative
  ensures res == str.Length * (str.Length + 1) / 2 // The number of non-empty substrings of a string of length n is n*(n+1)/2
```