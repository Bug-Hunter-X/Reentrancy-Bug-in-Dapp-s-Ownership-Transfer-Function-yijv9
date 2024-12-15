function transferOwnership(newOwner) {
  require(newOwner != address(0), "Ownable: new owner is the zero address");
  _transferOwnership(newOwner);
}

function _transferOwnership(newOwner) {
  // Emit OwnershipTransferred event before modifying state 
  emit OwnershipTransferred(owner, newOwner);
  owner = newOwner; 
}