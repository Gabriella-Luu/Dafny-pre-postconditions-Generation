```dafny
method numberOfSubstrings(str: string) returns (res: int)
  requires |str| >= 0
  ensures res == (|str| * (|str| + 1)) / 2
  ensures forall i :: 0 <= i < |str| ==> (exists j :: i <= j < |str| && str[i..j+1] != "")
{
  // Implementation not provided
}
```

### Explanation:
- **Precondition (`requires`):** The precondition `|str| >= 0` ensures that the input string `str` is valid (though in Dafny, strings are always non-null and have a non-negative length, this is a minimal requirement).
  
- **Postconditions (`ensures`):**
  - The first postcondition `res == (|str| * (|str| + 1)) / 2` ensures that the result `res` is equal to the number of non-empty substrings of `str`. This is derived from the formula for the sum of the first `n` natural numbers, where `n` is the length of the string.
  - The second postcondition `forall i :: 0 <= i < |str| ==> (exists j :: i <= j < |str| && str[i..j+1] != "")` ensures that for every index `i` in the string, there exists a substring starting at `i` and ending at some `j` that is non-empty. This ensures that all possible substrings are considered.

These conditions are minimal yet sufficient to verify the correctness of the method.