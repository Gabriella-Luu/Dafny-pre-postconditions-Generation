```dafny
method removeChars (firstStr:string, secondStr:string) returns (res:string)
  requires firstStr != null && secondStr != null
  ensures res != null
  ensures forall i :: 0 <= i < res.Length ==> !secondStr.Contains(res[i].ToString())
  ensures forall i :: 0 <= i < firstStr.Length ==> (firstStr[i].ToString() in secondStr ==> !res.Contains(firstStr[i].ToString()))
  ensures forall i :: 0 <= i < firstStr.Length ==> (firstStr[i].ToString() !in secondStr ==> res.Contains(firstStr[i].ToString()))
  // The resultant string 'res' should not contain any characters that are present in 'secondStr'
  // All characters from 'firstStr' that are not in 'secondStr' should be present in 'res'
  // All characters from 'firstStr' that are in 'secondStr' should not be present in 'res'
{
  // Method implementation goes here
}
```