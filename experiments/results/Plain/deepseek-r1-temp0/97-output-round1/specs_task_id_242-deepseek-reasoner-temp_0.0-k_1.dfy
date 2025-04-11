```dafny
method countCharacter(str:string) returns (res:int)
  ensures res == |str| // Postcondition: Result equals string length
{
  // Implementation would calculate res := str.Length
}
```