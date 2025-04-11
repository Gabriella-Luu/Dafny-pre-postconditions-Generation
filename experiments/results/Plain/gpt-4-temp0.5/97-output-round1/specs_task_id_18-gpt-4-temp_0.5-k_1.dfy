```dafny
method removeChars (firstStr:string, secondStr:string) returns (res:string)
  requires firstStr != null && secondStr != null
  ensures forall i :: 0 <= i < secondStr.Length ==> !res.Contains(secondStr[i].ToString())
  ensures forall i :: 0 <= i < res.Length ==> firstStr.Contains(res[i].ToString())
  ensures forall i :: 0 <= i < firstStr.Length ==> (secondStr.Contains(firstStr[i].ToString()) ==> !res.Contains(firstStr[i].ToString()))
{
  // Method implementation goes here
}
```