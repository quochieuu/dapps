pragma solidity ^0.5.13;

contract WorkingWithVariables {
   string public myString = "Hello the real world!";
   
   function setMyString(string memory _myString) public {
       myString = _myString;
   }
}