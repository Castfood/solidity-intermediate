# myasseset

For this project, write a smart contract that implements the require(), assert() and revert() statements.

## Description

This Solidity contract Implements the `require()`, `assert()` and `revert()` statements. These statements are commonly used for validating conditions and handling exceptions in smart contracts.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., HelloWorld.sol). Copy and paste the following code into the file:

```javascript
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract AssertionContract {
    // public variables here
    uint public value;

    // setValue function
    function setValue(uint _value) external {
        // require statement
        require(_value > 99, "Value must be greater than 99");
        value = _value;
    }
    // incrementValue function
    function incrementValue(uint _increment) external {
        // assert statement
        uint newValue = value + _increment;
        assert(newValue > value);

        value = newValue;
    }
    // decrementValue function
    function decrementValue(uint _decrement) external {
        // revert statement
        if (_decrement > value) {
            revert("Decrement value exceeds current value");
        }

        value -= _decrement;
    }
}

```

There are three function in this contract setValue, incrementValue and decrenentValue they have `require()`, `assert()` and `revert()` statement respectively.

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "Compile myasseset.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "myasseset" contract from the dropdown menu, and then click on the "Deploy" button.

## Authors

Akash Patel

## License

This project is licensed under the MIT License - see the LICENSE.md file for details

