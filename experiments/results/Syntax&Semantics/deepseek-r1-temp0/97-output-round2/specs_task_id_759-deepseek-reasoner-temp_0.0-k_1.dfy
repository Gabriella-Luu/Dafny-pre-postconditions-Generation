```dafny
method isDecimal(str:string) returns (res:bool)
    ensures res <==> (
        exists i | 0 <= i < |str| 
            :: str[i] == '.' 
            && (forall j | 0 <= j < |str| && j != i :: str[j] != '.' )
            && |str| - i - 1 == 2 
            && (forall k | i+1 <= k < |str| :: str[k] in {'0'..'9'})
            && (i == 0 
                || (i > 0 
                    && ( (str[0] in {'+', '-'} 
                            && i > 1 
                            && (forall m | 1 <= m < i :: str[m] in {'0'..'9'}) )
                        || (forall m | 0 <= m < i :: str[m] in {'0'..'9'}) )
                    )
            )
    )
{
    // Implementation not provided
}
```