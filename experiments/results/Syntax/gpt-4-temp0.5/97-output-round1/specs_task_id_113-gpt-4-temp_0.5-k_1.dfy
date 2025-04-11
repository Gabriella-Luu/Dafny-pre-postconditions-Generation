```dafny
method checkInteger (str:string) returns (res:bool)
    requires str != ""
    ensures res <==> (forall i :: 0 <= i < |str| ==> ('0' <= str[i] && str[i] <= '9') || (i == 0 && str[i] == '-'))
```