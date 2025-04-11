```dafny
method numberOfSubstrings(str:string) returns (res:int)
  requires true
  ensures res == (|str|*(|str| + 1))/2
```