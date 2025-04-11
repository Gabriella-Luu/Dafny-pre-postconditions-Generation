```dafny
method evenPosition(list: seq<int>) returns (res: bool)
  ensures res <==> (forall i :: 0 <= i < |list| && i % 2 == 0 ==> list[i] % 2 == 0)
{
  // Implementation not provided
}
```