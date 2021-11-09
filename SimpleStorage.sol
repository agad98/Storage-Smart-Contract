// SPDX-License-Identifier: GFDL-1.3-or-later

pragma solidity ^0.6.0;

contract SimpleStorage{
    
    // this will be zero
    //this is a comment
    
    uint256 GadNumber;
    
    struct People {
        uint256 favoriteNumber;
        string name;
        
    }
    
    People[] public people;
    
    mapping(string => uint256) public nameToFavoriteNumber;
    
    
    function store(uint256 _GivenNumber) public {
        GadNumber = _GivenNumber;
    }
    
    //view, pure
    //view is used to retrieve data from the blockchain
    //pure functions purely do math 
    
    function retrieve() public view returns(uint256){
        return GadNumber;
    }
    
    function addPerson(uint256 _favoriteNumber, string memory _name) public {
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}