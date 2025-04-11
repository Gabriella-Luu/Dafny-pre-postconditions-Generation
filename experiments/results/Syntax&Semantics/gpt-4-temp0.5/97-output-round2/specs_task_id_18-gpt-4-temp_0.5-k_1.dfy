```dafny
method removeChars(firstStr: string, secondStr: string) returns (res: string)
  requires true
  ensures forall i :: 0 <= i < |res| ==> !(res[i] in secondStr[..])
  ensures forall i :: 0 <= i < |firstStr| ==> (firstStr[i] in secondStr[..]) || (firstStr[i] in res[..])
  ensures forall i, j :: 0 <= i < j < |res| ==> res[i] != res[j] 
{}
```