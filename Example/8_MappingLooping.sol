pragma solidity 0.4.24;

contract MappingLooping {

    mapping (uint => address) Names;
    
    uint counter;

    function addtoMapping(address addressDetails) public returns (uint){
      counter = counter + 1;

      Names[counter] = addressDetails;
      
      return counter; 
    }
   
   function getMappingMembers() public view returns (address[]){
      address[] memory localBytes = new address[](counter);
      for(uint i=1; i<= counter; i++){
          localBytes[i - 1] = Names[i];
      }
      return localBytes;
    }
    
    function getMappingMember(uint id) public view returns (address) {
      return Names[id];
    }
}
