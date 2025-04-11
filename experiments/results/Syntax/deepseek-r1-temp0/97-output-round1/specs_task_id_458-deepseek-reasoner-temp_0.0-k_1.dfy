```dafny
method rectangleArea(l:int, b:int) returns (res:int)
  requires l >= 0
  requires b >= 0
  ensures res == l * b
```