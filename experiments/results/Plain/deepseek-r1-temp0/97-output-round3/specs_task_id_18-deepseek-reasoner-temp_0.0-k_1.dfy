```dafny
method removeChars (firstStr:string, secondStr:string) returns (res:string)
   ensures res == [c | c in firstStr where c !in secondStr]
{
   // Implementation not provided
}
```