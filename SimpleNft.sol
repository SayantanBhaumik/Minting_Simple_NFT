
pragma solidity 0.6.6;

//$ npm install @openzeppelin/contracts
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

//inheriting the functions of ERC721.sol
contract SimpleNft is ERC721 {

    //number of tokens
    uint public tokenCounter;

    //we are inheriting the constructor of ERC721.sol
    //it requires as input name of the token and a symbol
    //constructor(string memory name_, string memory symbol_) {
    //   _name = name_;
    //  _symbol = symbol_;
    //}

    constructor () public ERC721 ("cs_sayantan","@*"){
        tokenCounter =0;
    }

    //function to create token 
    function createNft(string memeory _tokenURI) public returns(uint256){
        uint256 newtokenId = tokenCounter;
    //_safeMint(to, tokenId, "")
        _safemint(msg.sender,newtokenId);
        _setTokenURI(newtokenId,_tokenURI);
        tokenCounter=tokenCounter + 1;
        return newtokenId;
    }

}
