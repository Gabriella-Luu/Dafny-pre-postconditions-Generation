```dafny
method isDecimal(str:string) returns (res:bool)
    ensures res <==> (
        (exists k :: 0 <= k < |str| && 
            str[k] == '.' && 
            (k + 3 == |str|) && 
            (forall i :: 0 <= i < |str| ==> (i == k || ('0' <= str[i] <= '9')))
        )
{
    // Implementation not provided
}
```