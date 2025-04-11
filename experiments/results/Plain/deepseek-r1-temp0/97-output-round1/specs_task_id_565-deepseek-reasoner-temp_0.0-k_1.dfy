```dafny
method split(str:string) returns (res:seq<char>)
  ensures |res| == str.Length // The result length matches input length
  ensures forall i :: 0 <= i < str.Length ==> res[i] == str[i] // Each character matches
{
  // Implementation not shown
}
```