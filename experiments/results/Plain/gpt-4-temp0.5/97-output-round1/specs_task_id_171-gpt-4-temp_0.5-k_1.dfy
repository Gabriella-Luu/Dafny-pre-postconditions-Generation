```dafny
method perimeterPentagon (a:int) returns (res:int)
  requires a > 0 // The length of the side must be a positive integer
  ensures res == 5*a // The perimeter of a regular pentagon is 5 times the length of its side
```