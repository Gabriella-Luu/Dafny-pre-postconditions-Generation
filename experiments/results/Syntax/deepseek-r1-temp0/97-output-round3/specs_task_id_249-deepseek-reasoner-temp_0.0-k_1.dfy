```dafny
method intersectionArray(a: array<int>, b: array<int>) returns (result: seq<int>)
  ensures forall x :: x in result ==> (x in a[..]) && (x in b[..])
  ensures forall x :: (x in a[..]) && (x in b[..]) ==> x in result
  ensures forall i, j :: (0 <= i < j < |result|) ==> (result[i] != result[j])
{
  // Implementation not provided
}
```