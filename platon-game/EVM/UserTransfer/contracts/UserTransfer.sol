pragma solidity ^0.5.5;

//请完善方法相关逻辑
contract UserTransfer {
address owner;
    mapping(address => uint8) public balances; 

    constructor () public 
        owner=msg.sender;
        balances[msg.sender] = 200;
    }
    

    function transfer(address _to, uint8 _value) public returns (bool) {	
    	require(balances[msg.sender] - _value>=0);
        balances[msg.sender] -= _value;
        balances[_to] += _value;
        return true;
   }
	
   function getBalance(address addr) view public returns (uint8){
	return balances[addr];
   }

   function mint(uint8 _value) public returns (bool) {
        require(owner=msg.sender); 
        if(balances[msg.sender] == 200 -  _value)
	{ 
	return true;
    	}
}
}

