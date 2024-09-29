// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import {SimpleStorage} from "./SimpleStorage.sol";

contract Stf{

    SimpleStorage[] public listofSimpleStorage;

    function createsscontract() public {
        SimpleStorage ssvariable=new SimpleStorage();
        listofSimpleStorage.push(ssvariable);
    }

    function sfStore( uint256 ssindex, uint256 ssnum) public {
        listofSimpleStorage[ssindex].store(ssnum);
    }
    function sfGet(uint256 ssindex) public view returns (uint256){
        return listofSimpleStorage[ssindex].retrieve();
    }
}