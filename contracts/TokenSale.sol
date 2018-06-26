pragma solidity ^0.4.18;

import './LoyalToken.sol';

contract TokenSale{

	LoyalToken public ltoken;
	uint256 public supply;
	address public admin;

	constructor(address _adr) public{

		ltoken =  LoyalToken(_adr); //new LoyalToken();
		admin = msg.sender;
	}

	modifier onlyAdmin{

		require(msg.sender == admin);
		_;
	}

	function tokenTransfer(address _adr, uint256 _token) public{

		//supply = ltoken.balance();
		//require((supply<= ltoken.getSupply())&&supply!=0);
		ltoken.transfer(_adr,_token);

	} 

	function getAdmin() public view returns(address){

		return admin;
	}

	function getBalance(address _adr)public view returns(uint256){

		return ltoken.balance(_adr);
	}
}