```dafny
method checkChar(str:string) returns (res:bool)
requires |str| >= 1
ensures res <==> str[0] == str[|str| - 1]
```