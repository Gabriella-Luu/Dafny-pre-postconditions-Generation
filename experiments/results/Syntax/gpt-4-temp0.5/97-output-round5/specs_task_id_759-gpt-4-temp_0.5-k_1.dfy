```dafny
method isDecimal(str:string) returns (res:bool)
    requires |str| > 0
    ensures res <==> (
        (forall i :: 0 <= i < |str| ==> ('0' <= str[i] && str[i] <= '9') || str[i] == '.')
        && (exists j, k :: 0 <= j < k < |str| && str[j] == '.' && str[k] == '.')
        && (forall l, m :: 0 <= l < m < |str| && str[l] == '.' ==> (m - l) == 3)
    )
```