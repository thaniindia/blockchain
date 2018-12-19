pragma solidity ^0.5.1;
contract Demo{
    uint number1;
    uint number2;
   
    function getNumbers(uint a, uint b) public{
        number1 = a;
        number2 = b;
    }
    
    function addNumbers() view public returns(uint number){
        number = number1 + number2;
    }
}
