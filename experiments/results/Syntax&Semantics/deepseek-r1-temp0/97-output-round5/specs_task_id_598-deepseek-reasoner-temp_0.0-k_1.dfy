```dafny
method armstrongNumber(number:int) returns (res:bool)
    ensures res <==> (number >=0 && (
        (number == 0) || 
        (exists k: int :: k >0 && 
            (number == (number %10)* (number %10)* (number %10) /* ... k times */ + 
            ((number /10) %10)* ((number /10) %10)* ((number /10) %10) /* ... k times */ + 
            /* ... all digits ... */)))
{
    // Implementation would need to calculate digit count and verify sum
}
```