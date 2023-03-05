// SPDX-License-Identifier: GPL-3.0 

pragma solidity ^0.8.2;


contract Deposit{
    receive() external payable{

    }

    fallback() external payable{

    }

    function getBalance() public view returns(uint){
        return address(this).balance;
    }

    function sendEther() public payable{
        uint x;
        x++;
    }

    function transferEthere(address payable recipient, uint amount) public returns(bool){
        if(amount <= getBalance()){
            recipient.transfer(amount);
            return true;
        }else{
            return false;
        }
    }
}







 

 






// contract Auction{
//     mapping(address => uint)   public bids;


//     function bid() payable public{
//         bids[msg.sender] = msg.value;
//     }

// }

 

// struct Instructor{
//     uint age;
//     string name;
//     address addr;
// }

// contract Academy{
//     Instructor public academyInstructor;


//     enum State {open, Closed, Unkown}
//     State public academyState = State.open;


//     constructor(uint _age, string memory _name){
//         academyInstructor.age = _age;  
//         academyInstructor.name = _name;
//         academyInstructor.addr = msg.sender;
//     }

//     function changeInstructor(uint _age, string memory _name, address _addr) public{
//         if (academyState == State.open){
//             Instructor memory myInstructor = Instructor({
//             age: _age,
//             name: _name,
//             addr: _addr
//         }
//         ); 
//         academyInstructor = myInstructor;
//         }

//     }

// }

// contract School{
//     Instructor public SchoolInstructor;

// }



// contract Property{

//     bytes public b1   = 'abc';
//     string public s1 = 'abc';

//     function addElement() public{
//         b1.push('x');
//     }

//     function getElement(uint i) public view returns(bytes1){
//         return b1[i];  
//     }


    // uint[] public numbers;

    // function getLength() public view returns(uint){
    //     return numbers.length;
    // }

    // function addElement(uint item) public{
    //     numbers.push(item);
    // }

    // function getElement(uint i)public view returns(uint){
    //     if(i < numbers.length){
    //         return numbers[i];
    //     }
    //     return 0;
    // }
    // int public price;
    // string  public location = "Chongqing";
    // address  public owner;  


    // constructor(int _price, string memory _location){
    //   price = _price;
    //   location = _location;
    //   owner = msg.sender;   
    // }


    // function setPrice(int _price) public{
    //   price = _price;
  
    // }

    // function getPrice() public view returns(int){
    //   return price;
    // }
    
    // function setLocation(string memory _location) public{
    //   location = _location;
    // }

    
  
    // uint private price;
    // address public owner;

    // constructor(){
    //     price = 0;
    //     owner = msg.sender;
    // }

    // modifier onlyOwner(){
    //     require(msg.sender == owner);
    //     _;
    // }

    // function changeOwner(address _owner ) public onlyOwner{
    //     owner = _owner;
    // }

    // function setPrice(uint _price) public {
    //     price = _price;
    // }

    // ///@notice Returns the price of the Property
    // function getPrice() view public returns (uint){
    //     return  price;
    // }

    // //Event

    // event  OwnerChanged(address owner);

// }