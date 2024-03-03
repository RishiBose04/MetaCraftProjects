# Eth_Token
Eth_Token is a simple token contract that allows the user to mint and burn the tokens.It is written in solidity programming language version 0.8.22 and it follows the MIT License.

# Description
The contract has a public variables that store details about token name, token abbreviation and totalsupply.
This contract has a mapping of addresses to balances of how many tokens are owned by each account.
This contract has two function:
1) mint function: This function takes two parameter namely address and amount, address represent the receiver account and amount represents the number of tokens to be minted.
2) burn function: This function takes two parameter namely address and amount, address represent the owner account and amount represents the number of tokens to be burned, and it checks for the condition whether the balance is greater than zero.

# Executing program
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (MyToken.sol). Copy and paste the following code into the file:
To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.4" (or another compatible version), and then click on the "Compile MyToken.sol" button.

To mint tokens, you need to call mint function with an address and a value.if you want to mint 100 tokens for account 0x2345, you need to do:

//myToken.mint(0x2345, 100);

To burn tokens, you need to call burn function with an address and a value.if you want to burn 100 tokens for account 0x1234, you need to do:

//myToken.burn(0x1234, 100);



pragma solidity 0.8.22;


contract MyToken {

    // public variables here
    string public tokenName="Metatoken";
    string public tokenAbbreviation="MT";
    uint public totalTokens=0;

    // mapping variable here
    mapping(address => uint)public balance;


    // mint function
    function mint (address _address,uint _tokens)public {
        totalTokens += _tokens;
        balance[_address]+=_tokens;
    }

    // burn function
    function burn(address _address,uint _tokens)public {
        if(balance[_address]>=_tokens){
        totalTokens -= _tokens;
        balance[_address] -=_tokens;}
    }

}

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "HelloWorld" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the sayHello function. Click on the "HelloWorld" contract in the left-hand sidebar, and then click on the "sayHello" function. Finally, click on the "transact" button to execute the function and retrieve the "Hello World!" message.

# Authors
Rishi bose
@RishiBose04

# License
This project is licensed under the MIT License.
