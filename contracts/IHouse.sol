pragma solidity ^0.4.4;

contract IHouse {
  
  address Admin; 
  address grid = 0x0;  

  modifier adminOnly {
    if (msg.sender == Admin) {
      _;
    } else {
      revert();
    }
  }

  function getSortedInfo() returns(uint consum, uint rank, uint tot, bool updated);

  function setGridAdr(address adr) adminOnly external {
    grid = adr;
  }
  
}
