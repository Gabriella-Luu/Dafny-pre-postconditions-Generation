```dafny
method checkInteger (str:string) returns (res:bool)
    requires true
    ensures (
        res <==> (
            // The string is not empty and all characters are either digits or the first character is a minus sign
            |str| > 0 && (forall i :: 0 <= i < |str| ==> 
                (str[i] >= '0' && str[i] <= '9') || (i == 0 && str[i] == '-')
            )
        )
    )
```