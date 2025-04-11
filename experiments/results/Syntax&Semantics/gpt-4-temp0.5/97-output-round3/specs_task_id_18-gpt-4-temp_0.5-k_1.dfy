```dafny
method removeChars (firstStr:string, secondStr:string) returns (res:string)
    requires forall i :: 0 <= i < |firstStr| ==> firstStr[i] in {'a'..'z', 'A'..'Z'}
    requires forall i :: 0 <= i < |secondStr| ==> secondStr[i] in {'a'..'z', 'A'..'Z'}
    ensures forall i :: 0 <= i < |res| ==> res[i] in {'a'..'z', 'A'..'Z'} && !(res[i] in secondStr)
    ensures forall i :: 0 <= i < |firstStr| ==> (firstStr[i] in secondStr) || (exists j :: 0 <= j < |res| && res[j] == firstStr[i])
```