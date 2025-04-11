```dafny
method armstrongNumber(number:int) returns (res:bool)
  requires number >= 0
  ensures res <==> (number >= 0 && (
    number == 0 || (number > 0 && (
      (exists digits: seq<int> | 
        (|digits| > 0) && 
        (forall d in digits :: 0 <= d <= 9) &&
        number == (sum d in digits :: d**|digits|)
      ))
  ))
```