```dafny
method isDecimal(str: string) returns (res: bool)
  requires |str| > 0
  ensures res == (
    (exists i :: 0 <= i < |str| && str[i] == '.') &&
    (forall j :: 0 <= j < |str| ==> (
      (str[j] >= '0' && str[j] <= '9') || str[j] == '.'
    )) &&
    (exists k :: 0 <= k < |str| && str[k] == '.' && (|str| - k - 1) == 2)
  )
```
### Explanation:
- **Precondition (`requires`):** The string `str` must not be empty (`|str| > 0`).
- **Postcondition (`ensures`):** The result `res` is `true` if and only if:
  1. The string contains exactly one decimal point (`exists i :: 0 <= i < |str| && str[i] == '.'`).
  2. All characters in the string are either digits (`0-9`) or a decimal point (`forall j :: 0 <= j < |str| ==> ((str[j] >= '0' && str[j] <= '9') || str[j] == '.')`).
  3. The decimal point is followed by exactly two digits (`exists k :: 0 <= k < |str| && str[k] == '.' && (|str| - k - 1) == 2`).

This ensures that the string is a valid decimal number with a precision of 2.