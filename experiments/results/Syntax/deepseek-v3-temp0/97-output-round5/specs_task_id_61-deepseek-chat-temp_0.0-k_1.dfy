```dafny
method countSubstrings(str: string) returns (res: int)
  requires |str| >= 0
  ensures res >= 0
  ensures forall i, j :: 0 <= i <= j < |str| ==> (
    (exists k :: i <= k <= j && str[k] == '0') || 
    (sumDigits(str[i..j+1]) == (j - i + 1)) ==> res > 0
  )
  ensures forall i, j :: 0 <= i <= j < |str| ==> (
    sumDigits(str[i..j+1]) != (j - i + 1) ==> res == 0
  )
{
  // Implementation goes here
}
```

### Explanation:
- **Preconditions (`requires`)**:
  - `|str| >= 0`: Ensures that the string length is non-negative, which is always true for valid strings in Dafny.

- **Postconditions (`ensures`)**:
  - `res >= 0`: Ensures that the result is non-negative, as the count of substrings cannot be negative.
  - The second `ensures` clause ensures that if there exists a substring where the sum of digits equals its length, then the result `res` is greater than 0.
  - The third `ensures` clause ensures that if no such substring exists, the result `res` is 0.

The function `sumDigits` is assumed to be a helper function that calculates the sum of digits in a given substring. This function would need to be defined separately.