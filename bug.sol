function transferOwnership(newOwner) {
  require(newOwner != address(0), "Ownable: new owner is the zero address");
  // This is the problematic line
  _transferOwnership(newOwner);
}

function _transferOwnership(newOwner) {
  emit OwnershipTransferred(owner, newOwner);
  owner = newOwner; //This line is unsafe and the error happens here 
}