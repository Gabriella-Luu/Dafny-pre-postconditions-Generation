```dafny
method removeChars (firstStr:string, secondStr:string) returns (res:string)
    ensures forall c :: c in res ==> c in firstStr && !(c in secondStr)
    ensures forall k :: 0 <= k < |firstStr| && !(firstStr[k] in secondStr) ==> firstStr[k] in res
    ensures forall i, j :: 0 <= i < j < |firstStr| && !(firstStr[i] in secondStr) && !(firstStr[j] in secondStr) ==> 
        (exists m, n :: 0 <= m < n < |res| && res[m] == firstStr[i] && res[n] == firstStr[j])
{
    // Implementation not provided
}
```