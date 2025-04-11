```dafny
method removeChars (firstStr:string, secondStr:string) returns (res:string)
   requires firstStr != null
   requires secondStr != null
   ensures forall c :: c in res ==> c in firstStr && c !in secondStr
   ensures forall i | 0 <= i < |firstStr| && firstStr[i] !in secondStr :: exists j | 0 <= j < |res| && res[j] == firstStr[i]
   ensures forall j | 0 <= j < |res| :: exists i | 0 <= i < |firstStr| && firstStr[i] == res[j] && firstStr[i] !in secondStr
   ensures forall k, l | 0 <= k < l < |res| :: exists m, n | 0 <= m < n < |firstStr| && res[k] == firstStr[m] && res[l] == firstStr[n] && firstStr[m] !in secondStr && firstStr[n] !in secondStr
{
   // Implementation not provided
}
```