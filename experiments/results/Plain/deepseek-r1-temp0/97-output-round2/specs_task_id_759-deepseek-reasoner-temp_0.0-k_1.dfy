```dafny
method isDecimal(str: string) returns (res: bool) 
   ensures res == (exists k :: 0 <= k < |str| && 
       str[k] == '.' && 
       k + 3 == |str| && 
       (forall i | k+1 <= i < k+3 :: '0' <= str[i] <= '9') && 
       (k == 0 || 
           ((str[0] == '+' || str[0] == '-') && (k == 1 || (forall j | 1 <= j < k :: '0' <= str[j] <= '9')) || 
           (forall j | 0 <= j < k :: '0' <= str[j] <= '9')
       )
   )
{
   // Implementation not provided
}
```