```dafny
method countCharacter(str: string) returns (res: int)
    requires str != null // The input string must not be null
    ensures res == |str| // The output integer 'res' must be equal to the length of the input string 'str'
    { }
```