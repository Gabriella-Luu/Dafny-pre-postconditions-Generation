```dafny
method removeChars (firstStr:string, secondStr:string) returns (res:string)
  ensures forall k :: 0 <= k < |res| ==> (res[k] in firstStr[..] && !(res[k] in secondStr[..]))
  ensures forall i :: 0 <= i < |firstStr| && firstStr[i] !in secondStr[..] ==> 
    (exists k :: 0 <= k < |res| && res[k] == firstStr[i] && 
      (forall j :: 0 <= j < i && firstStr[j] !in secondStr[..] ==> 
        (exists l :: 0 <= l < k && res[l] == firstStr[j])))
{
  // Implementation not provided
}
```