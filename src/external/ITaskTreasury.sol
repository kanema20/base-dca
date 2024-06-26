// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface ITaskTreasury {
    function depositFunds(
        address _receiver,
        address _token,
        uint256 _amount
    ) external payable;

    function withdrawFunds(
        address payable _receiver,
        address _token,
        uint256 _amount
    ) external;
}
