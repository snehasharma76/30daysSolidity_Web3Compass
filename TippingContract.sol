//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

contract TippingContract{

    struct Stream{
        address creator;
        string title;
        bool isActive;
        uint256 totalTips;
        mapping(address => uint256)tippers;
        address[] tipperslist;
    }

    mapping(uint256 => Stream) public streams;
    address public admin;
    uint256 public platformFee;
    mapping(address => uint256) public pendingWithdrawals;
    uint256 public streamCounter;

    constructor{
        admin = msg.sender;
        platformFee = totalTips/40; //2.5%
        streamCounter = 0;
    }

    event StreamRegistered(uint256 indexed streamId, address creator, string title);
    event StreamEnded(uint256 indexed streamId, uint256 totalTips);
    event TipSent(address indexed from, address indexed to, uint256 amount, uint256 streamId);
    event TipWithdrawan(address indexed creator, uint256 amount);


    modifier onlyAdmin(){
        require(msg.sender == admin, "Only admin can call this function");
        _;
    }

    modifier streamActive(){
        require(streams[streamId].isActive, "Stream is not active");
        _;

    }

    modifier onlyCreator(){
        require(msg.sender == streams[streamId].creator, "Only stream creator can call this function");
        _;
    }

    modifier streamExists(){
        require(streamId < streamCounter, "Stream does not exist");
    }

    function createStream()








}