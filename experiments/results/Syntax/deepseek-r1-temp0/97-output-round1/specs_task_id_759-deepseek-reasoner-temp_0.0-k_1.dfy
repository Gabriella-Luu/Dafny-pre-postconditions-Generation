```dafny
method isDecimal(str: string) returns (res: bool)
    ensures res <==> (
        exists i :: 0 <= i < |str| && str[i] == '.' 
        && (forall j :: 0 <= j < |str| && j != i ==> str[j] != '.') 
        && |str| == i + 3 
        && (forall k :: i+1 <= k < |str| ==> '0' <= str[k] <= '9') 
        && ( 
            i == 0 
            || (i > 0 && (
                (str[0] in {'+', '-'} && (forall k :: 1 <= k < i ==> '0' <= str[k] <= '9') 
                || (forall k :: 0 <= k < i ==> '0' <= str[k] <= '9')
            ))
        )
    )
{
    // Implementation logic would be here (omitted for brevity)
}
```