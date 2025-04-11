```dafny
method checkChar(str:string) returns (res:bool) 
   ensures res == (|str| != 0 && (|str| == 1 || str[0] == str[|str| - 1]))
{
   // Implementation not shown
}
```