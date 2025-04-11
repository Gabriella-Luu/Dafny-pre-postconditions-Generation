```dafny
function method filterNegatives(s: seq<int>): seq<int> {
    if s == [] then []
    else if s[0] < 0 then [s[0]] + filterNegatives(s[1..])
    else filterNegatives(s[1..])
}

method negNos(list1:array<int>) returns (res:array<int>)
  ensures res[..] == filterNegatives(list1[..])
{
  // Implementation not provided
}
```