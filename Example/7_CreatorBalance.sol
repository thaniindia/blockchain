pragma solidity >=0.4.0 <0.6.0;

/* 
	Another very basic contract. It demonstrates that a contract can retrieve and store the 
	balance of its creator address. Note that the creatorbalance value captured in the constructor is a snapshot in time.
	Later on, creator.balance will reflect whatever it is now.
*/

contract creatorBalanceChecker {

    address creator;
    uint creatorbalance; 		// TIP: uint is an alias for uint256. Ditto int and int256.

    constructor() public {
        creator = msg.sender; 								 // msg is a global variable
        creatorbalance = creator.balance;
    }

	function getContractAddress() public view returns (address) {
		return msg.sender;
	}
	
	function getCreatorBalance() public view returns (uint) {   // Will return the creator's balance AT THE TIME THIS CONTRACT WAS CREATED
        return creatorbalance;                                  
    }
    
    function getCreatorDotBalance() public view returns (uint) {  // Will return creator's balance NOW
        return msg.sender.balance;
    }
    
    /**********
     Standard kill() function to recover funds 
     **********/
    
    function kill() public { 
        if (msg.sender == creator)
        selfdestruct(msg.sender);  // kills this contract and sends remaining funds back to creator
    }

}
