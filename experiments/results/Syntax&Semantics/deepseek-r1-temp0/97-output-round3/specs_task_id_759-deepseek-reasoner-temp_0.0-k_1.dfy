```dafny
method isDecimal(str:string) returns (res:bool)
    ensures res <==> (
        exists i :: 0 <= i < |str| &&
        str[i] == '.' &&
        (|str| - i - 1 == 2) &&
        (forall k :: 0 <= k < |str| && k != i ==> str[k] in {'0'..'9'})
    )
```