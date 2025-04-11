```dafny
method findVolume(base: int, height: int, length: int) returns (volume: int)
  requires base >= 0
  requires height >= 0
  requires length >= 0
  requires (base * height * length) % 2 == 0
  ensures volume == (base * height * length) / 2
```