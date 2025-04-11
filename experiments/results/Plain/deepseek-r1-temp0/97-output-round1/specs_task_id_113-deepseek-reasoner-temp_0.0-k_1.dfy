```dafny
method checkInteger (str:string) returns (res:bool)
   ensures res == (
       str != "" && (
           (str[0] >= '0' && str[0] <= '9' && (forall i | 0 <= i < |str| :: str[i] >= '0' && str[i] <= '9')) ||
           (|str| > 1 && (str[0] == '+' || str[0] == '-') && (forall i | 1 <= i < |str| :: str[i] >= '0' && str[i] <= '9'))
       )
   )
```