```dafny
method checkInteger (str:string) returns (res:bool)
   ensures |str| == 0 ==> !res
   ensures |str| == 1 ==> res == (str[0] in ['0'..'9'])
   ensures (|str| > 1 && (str[0] == '+' || str[0] == '-')) ==> res == (forall i :: 1 <= i < |str| ==> str[i] in ['0'..'9'])
   ensures (|str| >= 1 && str[0] in ['0'..'9']) ==> res == (forall i :: 0 <= i < |str| ==> str[i] in ['0'..'9'])
   ensures (|str| >= 1 && !(str[0] in ['0'..'9'] || str[0] == '+' || str[0] == '-')) ==> !res
{
   // Implementation not provided
}
```