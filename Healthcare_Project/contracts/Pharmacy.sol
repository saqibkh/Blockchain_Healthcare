pragma solidity ^0.5.0;

contract Pharmacy {
  address pharmacy_address;
  string pharmacy_name;
  string keys;

  // Event that is triggered when pharmacy properties are changed
  event PatientPropertyChanged(string what);

  function createNewPharmacy(string memory _name,
          address _address, string memory _keys) public returns (bool) {
    pharmacy_address = _address;
    pharmacy_name = _name;
    keys = _keys;
    emit PatientPropertyChanged("Created a new Pharmacy");
  }

  function getPrescriptions(string memory _name,
          address _address, string memory _keys) public returns (string memory) {
    string data_prescriptions = Database.getInformation(_name, _address, _keys, "Prescriptions");
    return data_prescriptions;
  }
}
