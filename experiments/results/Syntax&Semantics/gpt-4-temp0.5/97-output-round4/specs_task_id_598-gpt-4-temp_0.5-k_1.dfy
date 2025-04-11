```dafny
method armstrongNumber(number:int) returns (res:bool)
  requires number >= 0
  ensures res <==> (exists digits :: (forall i :: 0 <= i < |digits| ==> 0 <= digits[i] < 10) && 
                    number == (sum j | 0 <= j < |digits| :: digits[j] * digits[j] * digits[j]))
```