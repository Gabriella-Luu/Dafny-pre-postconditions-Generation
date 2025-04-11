```dafny
method toggleString(str:string) returns (res:string)
    ensures |res| == |str|
    ensures forall i | 0 <= i < |str| :: res[i] == (
        if (('A' <= str[i]) && (str[i] <= 'Z')) then ((str[i] as int) + 32) as char
        else if (('a' <= str[i]) && (str[i] <= 'z')) then ((str[i] as int) - 32) as char
        else str[i]
    )
```