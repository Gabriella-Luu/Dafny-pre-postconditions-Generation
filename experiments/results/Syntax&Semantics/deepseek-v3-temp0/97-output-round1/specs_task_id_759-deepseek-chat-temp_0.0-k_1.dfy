```dafny
method isDecimal(str: string) returns (res: bool)
  ensures res <==> (
    |str| >= 1 &&
    (str[0] == '-' || str[0] == '+' || ('0' <= str[0] && str[0] <= '9')) &&
    exists dotIndex :: 0 <= dotIndex < |str| && str[dotIndex] == '.' &&
    (forall i :: 0 <= i < |str| && i != dotIndex ==> ('0' <= str[i] && str[i] <= '9')) &&
    |str| - dotIndex - 1 == 2
  )
{
  // Implementation goes here
}
```