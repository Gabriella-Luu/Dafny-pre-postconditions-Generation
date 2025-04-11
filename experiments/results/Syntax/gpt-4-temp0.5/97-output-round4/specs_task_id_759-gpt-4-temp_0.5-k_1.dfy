```dafny
method isDecimal(str:string) returns (res:bool)
    requires |str| > 0
    ensures (res <==> (
        (exists i :: 0 <= i < |str| && str[i] == '.') &&
        (forall j :: 0 <= j < |str| ==> (str[j] >= '0' && str[j] <= '9' || str[j] == '.')) &&
        (exists k :: 0 <= k < |str| && str[k] == '.') && 
        (forall l, m :: 0 <= l < m < |str| ==> !(str[l] == '.' && str[m] == '.')) &&
        (exists n, o :: 0 <= n < o < |str| && str[n] == '.' && o == n + 3 && o == |str|)
    ))
```