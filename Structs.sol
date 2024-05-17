// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Structs {
    struct Car {
        string model;
        uint year;
        address owner;
    }

    Car public car;
    Car[] public cars;
    mapping(address => Car[]) public carsByOwner;

    function examples() external {
        Car memory toyota = Car("toyota", 1990, msg.sender);
        Car memory lambo = Car({model: "Lamborghini", year: 1980, owner: msg.sender});
        Car memory tesla;
        tesla.model = "Tesla";
        tesla.year = 2010;
        tesla.owner = msg.sender;


        cars.push(toyota);
        cars.push(lambo);
        cars.push(tesla);

        cars.push("Ferrrari", 2020, msg.sender);

        Car memory _car = cars[0];
        _car.model: 
        _car.year;
        _car.owner;

        // update
        // load into storage
        Car storage _car2 = cars[1];
        _car.year = 1999;
        delete _car.owner;


        delete cars[1];
    }
}