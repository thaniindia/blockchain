pragma solidity ^0.4.18;

contract CustomerForm {
    
    struct Customer {
        uint age;
        string fName;
        string lName;
        uint mobileno;
        string email;
    }

    mapping (address => Customer) customersDetails;
    address[] public customerAccts;

    function setCustomer(address _address, string _fName, string _lName, uint _age, uint _mobileno, string _email) public {
        var customer = customersDetails[_address];

        customer.fName = _fName;
        customer.lName = _lName;
        customer.age = _age;
        customer.mobileno = _mobileno;
        customer.email = _email;
        
        customerAccts.push(_address) -1;
    }
    
    function getCustomers() view public returns(address[]) {
        return customerAccts;
    }
    
    function getCustomer(address _address) view public returns (string, string, uint, uint, string) {
        return (customersDetails[_address].fName, customersDetails[_address].lName,customersDetails[_address].age,customersDetails[_address].mobileno,customersDetails[_address].email);
    }
    
    function countCustomers() view public returns (uint) {
        return customerAccts.length;
    }
    
}
