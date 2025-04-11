```dafny
method isDecimal(str: string) returns (res: bool)
  ensures res == (
    exists i: int | 0 <= i < |str| && str[i] == '.' :: 
      (forall j | 0 <= j < |str| && j != i :: str[j] != '.') 
      && (|str| == i + 3)
      && (forall k | i+1 <= k < |str| :: '0' <= str[k] <= '9')
      && ( 
          (i == 0) 
          || 
          (i > 0 && (
            (str[0] in ['+', '-'] ==> (forall m | 1 <= m < i :: '0' <= str[m] <= '9')
            ) 
            && 
            (str[0] !in ['+', '-'] ==> forall m | 0 <= m < i :: '0' <= str[m] <= '9')
          ))
      )
{
  // Implementation not provided
}
```