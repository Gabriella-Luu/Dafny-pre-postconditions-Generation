```dafny
method checkMonthnumberNumber(monthnum:int) returns (res:bool)
requires 1 <= monthnum <= 12  // Precondition: Valid month numbers (1-12)
ensures res == (monthnum == 4 || monthnum == 6 || monthnum == 9 || monthnum == 11)  // Postcondition: True for 30-day months (Apr, Jun, Sep, Nov)
{
   // Implementation would check if monthnum is 4,6,9,11 and return true/false accordingly
}
```