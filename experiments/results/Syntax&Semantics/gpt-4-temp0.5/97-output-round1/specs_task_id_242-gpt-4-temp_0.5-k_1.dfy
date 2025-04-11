```dafny
method countCharacter(str:string) returns (res:int)
    requires true
    ensures res == |str|
```