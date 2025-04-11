```dafny
method removeChars (firstStr:string, secondStr:string) returns (res:string)
    requires forall i :: 0 <= i < |firstStr| ==> firstStr[i] in ['a'..'z', 'A'..'Z', '0'..'9', ' ', '!', '?', '.', ',']
    requires forall i :: 0 <= i < |secondStr| ==> secondStr[i] in ['a'..'z', 'A'..'Z', '0'..'9', ' ', '!', '?', '.', ',']
    ensures |res| <= |firstStr|
    ensures forall i :: 0 <= i < |res| ==> !(res[i] in secondStr[..])
    ensures forall i :: 0 <= i < |firstStr| ==> (firstStr[i] in secondStr[..]) || (exists j :: 0 <= j < |res| && res[j] == firstStr[i])
```