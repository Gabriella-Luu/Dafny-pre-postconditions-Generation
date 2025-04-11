```dafny
method toggleString(str:string) returns (res:string)
    ensures |res| == |str|
    ensures forall i :: 0 <= i < |str| ==> (
        (('a' <= str[i] && str[i] <= 'z') ==> res[i] as int == str[i] as int - 32) &&
        (('A' <= str[i] && str[i] <= 'Z') ==> res[i] as int == str[i] as int + 32) &&
        (!(('a' <= str[i] && str[i] <= 'z') || ('A' <= str[i] && str[i] <= 'Z')) ==> res[i] == str[i]
    )
```