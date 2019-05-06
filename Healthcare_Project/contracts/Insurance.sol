pragma solidity ^0.5.0;

contract Insurance {
  address insurance_address;
  string insurance_name;
  string keys;

  // Event that is triggered when insurance properties are changed
  event PatientPropertyChanged(string what);

  function createNewInsurance(string memory _name,
          address _address, string memory _keys) public returns (bool) {
    insurance_address = _address;
    insurance_name = _name;
    keys = _keys;
    emit PatientPropertyChanged("Created a new Insurance");
  }

  function getMedicalRecords() public returns (string memory) {
    string med_records = Database.getInformation(name, address, keys, "MedicalRecords");
    return med_records;
  }
}
