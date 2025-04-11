```dafny
method removeChars (firstStr:string, secondStr:string) returns (res:string)
   requires firstStr != null
   requires secondStr != null
   ensures res != null
   ensures forall c :: c in res.ToSequence() ==> c in firstStr.ToSequence() && c !in secondStr.ToSequence()
   ensures forall c :: c in firstStr.ToSequence() && c !in secondStr.ToSequence() ==> c in res.ToSequence()
   ensures forall i, j :: 0 <= i < j < |res| ==> exists m, n :: 0 <= m < n < |firstStr| && res[i] == firstStr[m] && res[j] == firstStr[n]
{
   // Implementation not provided
}
```