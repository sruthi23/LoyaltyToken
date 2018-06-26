pragma solidity ^0.4.18;

import './StandardToken.sol';

contract LoyalToken is StandardToken {

	string public constant name = "Loyal Coin";
	string public  constant symbol = "LCT"; 
	uint8 public constant decimals = 18;
	uint256 public constant total_supply = 1000000  * (1 ether / 1 wei);
	address public owner;
	
	constructor() payable public {

		totalSupply_ = total_supply;
		owner = msg.sender;
		balances[owner] = total_supply;
		
	}
	
	/* function requestApprove(address _spender,address _admin, uint256 _token) public returns(bool){
		
		require(_spender == _admin);
		approve(_spender,_token);
		} */
		function balance(address _owner) public view returns(uint256){

			return balances[_owner]; 
		}

		function getSupply() public view returns(uint256){

			return totalSupply_;
		}


	}