```dafny
method armstrongNumber(number:int) returns (res:bool)
    requires number >= 0
    ensures res <==> (number == (var sum := 0; var temp := number;
                                 while temp > 0
                                 invariant temp >= 0
                                 decreases temp
                                 {
                                    var remainder := temp % 10;
                                    sum := sum + (var i := 0; var result := 1;
                                                   while i < |number.ToString()|
                                                   invariant i >= 0
                                                   decreases |number.ToString()| - i
                                                   {
                                                      result := result * remainder;
                                                      i := i + 1;
                                                   }
                                                   result);
                                    temp := temp / 10;
                                 }
                                 sum))
```