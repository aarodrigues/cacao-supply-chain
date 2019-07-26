pragma solidity ^0.4.24;

// Import the library 'Roles'
import "./Roles.sol";

// Define a contract 'ConsumerRole' to manage this role - add, remove, check
contract ConsumerRole {

  // Define 2 events, one for Adding, and other for Removing
  event Add(address _address);
  event Remove(address _address);
  // Define a struct 'consumers' by inheriting from 'Roles' library, struct Role
  Roles.Role private consumers;
  // In the constructor make the address that deploys this contract the 1st consumer
  constructor(address[] memory _consumers) public {
    // for (uint256 i = 0; i < _consumers.length; ++i) {
    //         consumers.add(_consumers[i]);
    //     }
    consumers.add(_consumers[i]);
  }

  // Define a modifier that checks to see if msg.sender has the appropriate role
  modifier onlyConsumer() {
     require(consumers.has(msg.sender), "DOES_NOT_HAVE_CONSUMER_ROLE");
    _;
  }

  // Define a function 'isConsumer' to check this role
  function isConsumer(address account) public view returns (bool) {
    if(msg.sender == account)
       return true;
    
    return false
  }

  // Define a function 'addConsumer' that adds this role
  function addConsumer(address account) public onlyConsumer {
    consumers.add(account);
  }

  // Define a function 'renounceConsumer' to renounce this role
  function renounceConsumer() public {
    consumers.remove(account);
  }

  // Define an internal function '_addConsumer' to add this role, called by 'addConsumer'
  function _addConsumer(address account) internal {
    
  }

  // Define an internal function '_removeConsumer' to remove this role, called by 'removeConsumer'
  function _removeConsumer(address account) internal {
    
  }
}