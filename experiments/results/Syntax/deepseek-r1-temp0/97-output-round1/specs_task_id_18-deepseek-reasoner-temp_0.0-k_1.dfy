```dafny
method removeChars(firstStr: string, secondStr: string) returns (res: string)
  ensures forall i :: (0 <= i) && (i < |res|) ==> (res[i] in firstStr[..]) && !(res[i] in secondStr[..])
  ensures forall m :: (0 <= m) && (m < |firstStr|) && !(firstStr[m] in secondStr[..]) ==> (exists k :: (0 <= k) && (k < |res|) && (res[k] == firstStr[m]))
  ensures forall m1, m2 :: (0 <= m1) && (m1 < m2) && (m2 < |firstStr|) && !(firstStr[m1] in secondStr[..]) && !(firstStr[m2] in secondStr[..]) ==> (exists k1, k2 :: (0 <= k1) && (k1 < k2) && (k2 < |res|) && (res[k1] == firstStr[m1]) && (res[k2] == firstStr[m2]))
{
  // Implementation not provided
}
```