```dafny
method diff (a: seq<int>, b: seq<int>) returns (diff: seq<int>)
  ensures diff == FilterOut(a, b)
{
}

function method FilterOut(a: seq<int>, b: seq<int>): seq<int>
  decreases |a|;
{
  if |a| == 0 then []
  else 
    (if a[0] in b then [] else [a[0]]) + FilterOut(a[1..], b)
}
```