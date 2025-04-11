```dafny
method wordLen(str:string) returns (res:bool)
  requires true
  ensures res <==> |str| % 2 == 1
```