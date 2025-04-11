```dafny
method isDecimal(str:string) returns (res:bool)
    ensures res <==> (
        |str| >= 3
        && (exists i :: 0 <= i < |str|
            && str[i] == '.'
            && i == |str| - 3
            && (forall j | 0 <= j < |str| && j != i :: str[j] != '.')
            && str[i+1] in {'0'..'9'}
            && str[i+2] in {'0'..'9'}
            && (i == 0
                || ((str[0] == '+' || str[0] == '-') && (forall j | 1 <= j < i :: str[j] in {'0'..'9'}))
                || (forall j | 0 <= j < i :: str[j] in {'0'..'9'})
            )
        )
    )
{
    // Implementation not provided
}
```