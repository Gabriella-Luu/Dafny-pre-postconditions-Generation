```dafny
method toggleString(str:string) returns (res:string)
    ensures |res| == |str|
    ensures forall i :: 0 <= i < |str| ==> res[i] == (
        if (str[i] >= 'a' && str[i] <= 'z') then ((str[i] as int - 32) as char)
        else if (str[i] >= 'A' && str[i] <= 'Z') then ((str[i] as int + 32) as char)
        else str[i]
    )
```