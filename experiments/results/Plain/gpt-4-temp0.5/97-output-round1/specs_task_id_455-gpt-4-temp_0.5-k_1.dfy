```dafny
method checkMonthnumbNumber (m:int) returns (res:bool)
  requires m >= 1 && m <= 12; // precondition: m is a valid month number
  ensures (m == 1 || m == 3 || m == 5 || m == 7 || m == 8 || m == 10 || m == 12) ==> res == true; // postcondition: if the month number is either 1, 3, 5, 7, 8, 10, or 12, then the result is true
  ensures (m == 4 || m == 6 || m == 9 || m == 11) ==> res == false; // postcondition: if the month number is either 4, 6, 9, or 11, then the result is false
  ensures m == 2 ==> res == false; // postcondition: if the month number is 2 (February), then the result is false
{
  // Method implementation goes here
}
```