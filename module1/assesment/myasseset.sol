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
