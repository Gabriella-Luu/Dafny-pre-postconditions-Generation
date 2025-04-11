```dafny
method numberOfSubstrings(str:string) returns (res:int)
    requires str != ""
    ensures res == (|str|*(|str|+1))/2
```