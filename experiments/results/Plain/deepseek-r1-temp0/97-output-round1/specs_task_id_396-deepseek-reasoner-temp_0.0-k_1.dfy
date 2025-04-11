```dafny
method checkChar(str:string) returns (res:bool)
   requires str != ""  // Precondition: Input string must not be empty
   ensures res == (str[0] == str[str.Length - 1])  // Postcondition: Result reflects if first and last characters match
{
   // Method implementation would go here
}
```