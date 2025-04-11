```dafny
method checkInteger (str:string) returns (res:bool)
   ensures res <==> (
      (|str| != 0) && (
         ( (str[0] == '+' || str[0] == '-') && (|str| >= 2) && (forall i | 1 <= i < |str| :: str[i] in {'0'..'9'}) ) 
         || 
         ( (str[0] in {'0'..'9'}) && (forall i | 0 <= i < |str| :: str[i] in {'0'..'9'}) )
      )
   )
{
   // Implementation not provided
}
```