// SPDX-License-Identifier: MIT
pragma solidity >=0.4.21 <0.7.0;

contract WheeledVehicles {

  event LogCustomerAdded(uint indexed vehicle, address indexed customer);
  event LogVehicleAdded(uint indexed vehicle, uint indexed price);

  uint private vehicleIdCounter = 0;

  enum State{ Unsold, Sold, NotAvailable }

  struct Vehicle {
    uint vehicleId;
    uint currentPrice;
    State status;
    address payable customer;
    string make;
    string model;
    string year;
    Payment latestCustomerPayment;

  }

  struct Payment {
    uint timestamp;
    uint amount;
    address from;
  }

  uint[] public idList;

  uint public idListLength;

  mapping (uint => Vehicle) public vehicles;

  modifier isUnsold(uint id) {
    require(vehicles[id].status == State.Sold && vehicles[id].customer == address(0), "This vehicle was already sold.");
    _;
  }

  modifier isExactPayment(uint id) {
    require(vehicles[id].currentPrice == msg.value, "Please pay exact price of vehicle.");
    _;
  }

  constructor() {}


  function addAsBuyer(uint _vehicleId)
    public
    payable
    isUnsold(_vehicleId)
    isExactPayment(_vehicleId) {
      Vehicle storage _p = vehicles[_vehicleId];
      _p.customer = payable(msg.sender);
      _p.latestCustomerPayment = Payment({ timestamp: block.timestamp, amount: msg.value, from: msg.sender });
      _p.status = State.Sold;
      address dealer = dealer();
      (bool success, ) = dealer.call{ value: msg.value }("");
      require(success, "Assigning customer to vehicle failed.");
      emit LogCustomerAdded(_vehicleId, msg.sender);
    }

    function addVehicle (
      uint price,
      string memory _make,
      string memory _model,
      string memory _year) public onlyDealer {
        uint newVehicleId = vehicleIdCounter +1;

        Vehicle memory newVehicle = Vehicle({
          vehicleId: newVehicleId
          currentPrice: price
          status: State.Unsold,
          customer: payable(address(0)),
          make: _make,
          model: _model,
          year: _year,
          latestCustomerPayment: Payment({ timestamp: block.timestamp, from: address(0), amount: 0 })
        });

        vehicleIdCounter = newVehicleId;
        idList.push(newVehicleId);
        idListLength = idList.length;
        vehicles[newVehicle.vehicleId] = newVehicle;
        emit LogVehicleAdded(newVehicle.vehicleId, price);
      }
    
      function checkPayments() external {
      }
    
      /// @notice Unassign customer from a vehicle
      /// @dev Only the contract dealer can call this
      function removeCustomer() private onlyDealer {
        // TODO: remove tenant from a listing and set status to NotAvailable
      }
    
      /// @notice Withdraw contract funds
      /// @dev Only the contract dealer can call this
      function withdraw() public onlyDealer {
        // TODO: withdraw any funds from contract
      }
    

}
