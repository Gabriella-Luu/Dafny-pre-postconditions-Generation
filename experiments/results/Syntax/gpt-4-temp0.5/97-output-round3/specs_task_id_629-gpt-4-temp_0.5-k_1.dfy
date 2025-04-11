```dafny
method FindEvenNumbers(arr: array<int>) returns (evenList: seq<int>)
  requires arr != null // This is an exception to the "Never check null" rule as this is a precondition for an array in Dafny to ensure it's not null.
  ensures forall i :: 0 <= i < arr.Length ==> (arr[i] % 2 == 0) ==> (arr[i] in evenList)
  ensures forall i :: 0 <= i < |evenList| ==> evenList[i] % 2 == 0
  ensures forall i :: 0 <= i < |evenList| ==> (exists j :: 0 <= j < arr.Length && arr[j] == evenList[i])
{
}
```