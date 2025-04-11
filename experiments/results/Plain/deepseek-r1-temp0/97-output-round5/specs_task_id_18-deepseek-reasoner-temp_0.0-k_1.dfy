```dafny
method removeChars (firstStr:string, secondStr:string) returns (res:string)
   ensures forall c :: c in res ==> c in firstStr && c !in secondStr
   ensures forall c :: c in firstStr && c !in secondStr ==> c in res
   ensures forall i, j :: 0 <= i < j < |res| ==> (exists k, l :: 0 <= k < l < |firstStr| && firstStr[k] == res[i] && firstStr[l] == res[j])
{
   // Implementation not provided
}
```