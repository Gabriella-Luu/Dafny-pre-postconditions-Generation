```dafny
method isDecimal(str: string) returns (res: bool)
   ensures res == (
      if str == null then false else
         |str| >= 4 &&
         (exists i: int | 0 < i < |str| - 2 :: 
            str[i] == '.' &&
            str[i+1] in '0'..'9' &&
            str[i+2] in '0'..'9' &&
            ( (str[0] in ['+', '-'] && i > 1 &&
               (forall j: int | 1 <= j < i :: str[j] in '0'..'9')
              ) ||
              (i >= 1 && (forall j: int | 0 <= j < i :: str[j] in '0'..'9'))
            ) &&
            (forall k: int | 0 <= k < |str| && k != i :: str[k] != '.')
         )
   )
{
   // Dafny method without implementation
}
```