```dafny
method isDecimal(str: string) returns (res: bool)
    requires str != ""
    ensures (res == true) ==> (exists i :: 0 <= i < |str| && str[i] == '.')
    ensures (res == true) ==> (forall i :: 0 <= i < |str| && str[i] != '.' ==> str[i] >= '0' && str[i] <= '9')
    ensures (res == true) ==> (exists i, j :: 0 <= i < j < |str| && str[i] == '.' && j == i + 3)
    ensures (res == false) ==> !(exists i :: 0 <= i < |str| && str[i] == '.' && 
                                 (forall j :: 0 <= j < |str| && str[j] != '.' ==> str[j] >= '0' && str[j] <= '9') &&
                                 (exists k, l :: 0 <= k < l < |str| && str[k] == '.' && l == k + 3))
{
    // Implementation goes here
}
```
This method has the following preconditions and postconditions:

Preconditions:
- The input string is not empty.

Postconditions:
- If the result is true, then the string contains a decimal point.
- If the result is true, then all characters in the string that are not the decimal point are digits between 0 and 9.
- If the result is true, then there exists a decimal point in the string such that there are exactly two digits after it.
- If the result is false, then it's not the case that the string contains a decimal point, all non-decimal point characters are digits, and there are exactly two digits after the decimal point.