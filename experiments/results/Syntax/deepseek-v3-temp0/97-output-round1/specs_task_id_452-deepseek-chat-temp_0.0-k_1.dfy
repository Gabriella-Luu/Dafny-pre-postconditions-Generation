```dafny
method lossAmount(cost:int, sale:int) returns (res:int)
  requires cost >= 0 && sale >= 0
  ensures res == (if sale < cost then cost - sale else 0)
{
  // Implementation not provided
}
```