pragma solidity >=0.4.0 <0.6.0;

contract enumChoice {
    
    enum ActionChoices{ GoLeft, GoRight, GoStraight, SitStill }
    ActionChoices choice;
    ActionChoices constant defaultChoice = ActionChoices.GoStraight;
    
    function setChoice() public
    {
        choice = ActionChoices.SitStill;
    }
    // Since enum types are not part of the ABI, the signature of "getChoice"
    // will automatically be changed to "getChoice() returns (uint8)"
    // for all matters external to Solidity. The integer type used is just
    // large enough to hold all enum values, i.e. if you have more values,
    // `uint16` will be used and so on.
    
    function getChoice() public view returns (ActionChoices)
    {
        return choice;
    }
    
    function getDefaultChoice() public pure returns (uint)
    {
        return uint(defaultChoice);
    }
    
}
