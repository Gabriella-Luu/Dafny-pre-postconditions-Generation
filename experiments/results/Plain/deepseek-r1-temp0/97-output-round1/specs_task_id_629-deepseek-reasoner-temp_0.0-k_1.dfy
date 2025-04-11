```dafny
function FilterEven(s: seq<int>): seq<int> {
  if s == [] then []
  else (if s[0] % 2 == 0 then [s[0]] + FilterEven(s[1..]) else FilterEven(s[1..]))
}

method FindEvenNumbers(arr: array<int>) returns (evenList: seq<int>)
  requires arr != null
  ensures evenList == FilterEven(arr[..])
  ensures forall x | x in evenList :: x % 2 == 0
{
  // Dafny method without implementation
}
```