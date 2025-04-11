```dafny
method removeChars (firstStr:string, secondStr:string) returns (res:string)
  requires true // No specific preconditions required for this task
  ensures forall i :: 0 <= i < |firstStr| ==> (firstStr[i] in secondStr) ==> !(firstStr[i] in res)
  ensures forall i :: 0 <= i < |res| ==> (res[i] in firstStr) && !(res[i] in secondStr)
  ensures |res| <= |firstStr|
```