```dafny
method countSubstrings(str:string) returns (res:int)
  requires forall i :: 0 <= i < |str| ==> str[i] >= '0' && str[i] <= '9'
  ensures forall i, j :: 0 <= i <= j < |str| ==> 
    (res >= 0 && res <= (j - i + 1)) <==> 
    (exists k :: i <= k <= j && 
      (sum{ l | l in i..k :: (str[l] - '0') as int} == (k - i + 1)))
```