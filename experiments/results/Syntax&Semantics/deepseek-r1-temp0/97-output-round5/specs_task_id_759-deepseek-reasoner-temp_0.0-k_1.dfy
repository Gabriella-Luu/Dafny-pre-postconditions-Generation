```dafny
method isDecimal(str:string) returns (res:bool)
    ensures res <==> (
        (|str| >= 4) &&
        (str[|str| - 3] == '.') &&
        (forall i :: 0 <= i < |str| && i != |str| - 3 ==> str[i] != '.') &&
        (str[|str| - 2] in {'0'..'9'} && str[|str| - 1] in {'0'..'9'}) &&
        ((str[0] == '+' || str[0] == '-') ==> (
            (|str| >= 5) &&
            (forall j :: 1 <= j < |str| - 3 ==> str[j] in {'0'..'9'})
        )) &&
        ((str[0] != '+' && str[0] != '-') ==> (
            (forall j :: 0 <= j < |str| - 3 ==> str[j] in {'0'..'9'})
        ))
    )
{
    // Implementation not provided
}
```