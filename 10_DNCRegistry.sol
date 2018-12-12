pragma solidity ^0.5.1;

contract DNCRegistry{

    mapping (uint => bool) public DNCDatabase;
    uint[] public mobileList;
    
    function addMobileNo(uint mobileno) public{
        DNCDatabase[mobileno]=true;
    }

    function contains(uint mobileno) public view returns (bool){
        return DNCDatabase[mobileno];
    }
    
    // Requires a public getter for array size
    function size() public returns (uint) {
        return mobileList.length;
    }

    function listMobileNos() public view returns (uint[] memory){
        uint counter = mobileList.length;
        
        uint[] memory localBytes = new uint[](counter);
        for(uint i=1; i<= counter; i++){
            localBytes[i - 1] = DNCDatabase[i];
        }
        return localBytes;
    }
}
