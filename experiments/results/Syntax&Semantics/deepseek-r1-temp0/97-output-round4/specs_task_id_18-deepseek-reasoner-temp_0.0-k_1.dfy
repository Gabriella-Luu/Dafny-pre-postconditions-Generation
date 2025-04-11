```dafny
method removeChars (firstStr:string, secondStr:string) returns (res:string)
    ensures forall k :: 0 <= k < |res| ==> res[k] in firstStr && !(res[k] in secondStr)
    ensures forall i :: 0 <= i < |firstStr| && !(firstStr[i] in secondStr) ==> exists k :: 0 <= k < |res| && res[k] == firstStr[i]
    ensures forall k1, k2 :: 0 <= k1 < k2 < |res| ==> 
        (exists i1, i2 :: 0 <= i1 < i2 < |firstStr| && res[k1] == firstStr[i1] && res[k2] == firstStr[i2])
{
    // Implementation not provided
}
```