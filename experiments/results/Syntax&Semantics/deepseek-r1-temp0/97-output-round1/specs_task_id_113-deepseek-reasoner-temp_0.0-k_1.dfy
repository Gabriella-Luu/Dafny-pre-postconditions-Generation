```dafny
method checkInteger (str:string) returns (res:bool)
    ensures res <==> (
        |str| >= 1 &&
        (
            (str[0] == '+' || str[0] == '-') && |str| >= 2 &&
            (forall i :: 1 <= i < |str| ==> '0' <= str[i] <= '9')
            ||
            (forall i :: 0 <= i < |str| ==> '0' <= str[i] <= '9')
        )
    )
```