pragma solidity ^0.5.1;

//Do Not Call Registry 
contract DNCRegistry{
    
    uint[] DNCDatabase;
    
    //Add mobile number into DNC Regiter
    function addMobileNo(uint mobileno) public { 
        if (!contains(mobileno))    //Check if mobile number already exist in the DNC Register list
            DNCDatabase.push(mobileno);
    }
    
    //get all mobile numbers list
    function getAllMobileNo() public view returns (uint[] memory){
        return DNCDatabase;
    }
    
    //get total count of mobile number registered in DNC register
    function getCount() public view returns(uint counter){
        counter = DNCDatabase.length;
    }
    
    //check if mobile number already exist in the registered list
    function contains(uint mobileno) public view returns (bool){
        uint counter = DNCDatabase.length;  //get DNC Register length
        for (uint i=0; i<counter; i++){
            if (DNCDatabase[i]==mobileno)
                return true;
        }
        return false;
    }
}
