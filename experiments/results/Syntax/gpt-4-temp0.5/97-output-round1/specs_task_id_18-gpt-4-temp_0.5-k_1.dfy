```dafny
method removeChars (firstStr:string, secondStr:string) returns (res:string)
    requires true
    ensures |res| <= |firstStr|
    ensures forall i :: 0 <= i < |res| ==> !(res[i] in secondStr[..])
    ensures forall i :: 0 <= i < |firstStr| ==> (firstStr[i] in secondStr[..]) || (exists j :: 0 <= j < |res| && res[j] == firstStr[i])
```