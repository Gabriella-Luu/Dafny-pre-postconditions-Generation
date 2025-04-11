```dafny
method lossAmount(cost:int, sale:int) returns (res:int)
  ensures res == (if sale < cost then cost - sale else 0)
{
  // Implementation not shown
}
```