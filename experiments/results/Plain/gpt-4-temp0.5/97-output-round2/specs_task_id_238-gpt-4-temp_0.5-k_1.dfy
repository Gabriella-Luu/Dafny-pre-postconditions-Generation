```dafny
method numberOfSubstrings(str:string) returns (res:int)
  requires str != null; // the input string must not be null
  ensures res >= 0; // the result must be non-negative
  ensures res == str.Length * (str.Length + 1) / 2; // the result must be equal to the number of non-empty substrings of the input string
```