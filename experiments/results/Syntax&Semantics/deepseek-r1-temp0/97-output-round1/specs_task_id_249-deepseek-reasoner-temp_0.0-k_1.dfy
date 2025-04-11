```dafny
method intersectionArray(a: array<int>, b: array<int>) returns (result: seq<int>)
  ensures forall elem :: elem in result <==> (elem in a[..] && elem in b[..])
  ensures forall i,j :: 0 <= i < j < |result| ==> result[i] != result[j]
{
  // Implementation not provided
}
```