pragma solidity ^0.5.13;

contract ExceptionSimple {
    mapping(address => uint) public balanceReceived;
    
    function receiveMoney() public payable {
        balanceReceived[msg.sender] += msg.value;
    }
    
    function withdrawMoney(address payable _to, uint _amount) public {
        balanceReceived[msg.sender] -= _amount;
        _to.transfer(_amount);
    }
}