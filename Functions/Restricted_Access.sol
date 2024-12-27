// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract RestrictedAccess {
    address public admin;

    constructor() {
        admin = msg.sender; // The deployer is the admin
    }
    modifier onlyAdmin() {
        require(msg.sender == admin, "Only admin can perform this action");
        _;
    }
    function changeAdmin(address _newAdmin) public onlyAdmin {
        admin = _newAdmin;
    }
    function restrictedFunction() public onlyAdmin {
        // Some logic that only admin can call
    }
}
