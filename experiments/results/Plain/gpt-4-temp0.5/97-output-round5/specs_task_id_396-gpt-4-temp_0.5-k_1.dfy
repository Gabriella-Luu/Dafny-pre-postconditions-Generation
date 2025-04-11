```dafny
method checkChar(str: string) returns (res: bool)
  requires str.Length > 0; // precondition: the input string should not be empty
  ensures res == true <==> str[0] == str[str.Length - 1]; // postcondition: the result is true if and only if the first and last characters of the string are the same
{
  // method implementation goes here
}
```