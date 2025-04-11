```dafny
method removeChars (firstStr:string, secondStr:string) returns (res:string)
   // Precondition: None needed as empty strings are handled naturally
   // Postcondition 1: All characters in result are from firstStr and not in secondStr
   ensures forall c :: c in res ==> c in firstStr && c !in secondStr
   // Postcondition 2: All valid characters from firstStr are included in result
   ensures forall c :: c in firstStr && c !in secondStr ==> c in res
   // Postcondition 3: Characters in result maintain original order from firstStr
   ensures forall i, j :: 0 <= i < j < |res| ==> 
     (exists m, n :: 0 <= m < n < |firstStr| && firstStr[m] == res[i] && firstStr[n] == res[j])
{
   // Implementation code would go here (omitted as per request)
}
```