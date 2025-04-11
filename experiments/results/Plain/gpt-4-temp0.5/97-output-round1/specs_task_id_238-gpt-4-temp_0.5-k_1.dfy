```dafny
method numberOfSubstrings(str: string) returns (res: int)
   requires str.Length >= 0
   ensures res == str.Length * (str.Length + 1) / 2
```