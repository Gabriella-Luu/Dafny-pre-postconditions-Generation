```dafny
method checkChar(str:string) returns (res:bool)
  ensures res == (if |str| == 0 then false else str[0] == str[|str| - 1])
```