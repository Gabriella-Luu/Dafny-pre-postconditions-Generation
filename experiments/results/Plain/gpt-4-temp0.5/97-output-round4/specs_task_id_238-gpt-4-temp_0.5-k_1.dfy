```dafny
method numberOfSubstrings(str: string) returns (res: int)
  requires str.Length > 0 // the string should be non-empty
  ensures res == str.Length * (str.Length + 1) / 2 // the number of non-empty substrings of a string of length n is n*(n+1)/2
{
  // Method implementation goes here
}
```