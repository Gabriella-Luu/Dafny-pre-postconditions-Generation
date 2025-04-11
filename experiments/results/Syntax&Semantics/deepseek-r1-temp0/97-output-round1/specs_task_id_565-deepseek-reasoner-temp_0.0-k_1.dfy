```dafny
method split(str:string) returns (res:seq<char>)
    ensures |res| == |str|
    ensures forall i :: 0 <= i < |str| ==> res[i] == str[i]
{
    // Implementation would convert string to char sequence here
    // (Not shown as per problem statement)
}
```