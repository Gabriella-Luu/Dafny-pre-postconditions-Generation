```dafny
method toggleString(str: string) returns (res: string)
    ensures |res| == |str|
    ensures forall i :: 0 <= i < |str| ==> (
        (('A' <= str[i] && str[i] <= 'Z') && (res[i] == (str[i] as int + 32) as char)) 
        || 
        (('a' <= str[i] && str[i] <= 'z') && (res[i] == (str[i] as int - 32) as char)) 
        || 
        ((!('A' <= str[i] && str[i] <= 'Z') && !('a' <= str[i] && str[i] <= 'z')) && (res[i] == str[i])
    )
```