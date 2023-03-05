// SPDX-License-Identifier: GPL-3.0 

pragma solidity >=0.6.0 <0.9.0;

contract BaseContract{
    int public x;
    address public owner;

    constructor(){
        x = 5;
        owner = msg.sender;
    }

    function setX(int _x) public {
        x = _x;
    }
}

contract A is BaseContract{
    int public y = 3;

}


// abstract contract BaseContract{
//     int public x;
//     address public owner;

//     constructor(){
//         x = 5;
//         owner = msg.sender;
//     }

//     function setX(int _x) public virtual;
// }

// contract A is BaseContract{
//     int public y = 3;

//     function setX(int _x) public override{
//         x = _x;
//     }
// }

// interface BaseContract{
//     // int public x;
//     // address public owner;

//     // constructor(){
//     //     x = 5;
//     //     owner = msg.sender;
//     // }

//     function setX(int _x) external;
// }

// contract A is BaseContract{
//     int public x;
//     int public y = 3;

//     function setX(int _x) public override{
//         x = _x;
//     }
// } 

