pragma solidity ^0.5.0;

contract Patient {
  address patient_address;
  string patient_name;
  string memory keys;

  // Event that is triggered when patient properties are changed
  event PatientPropertyChanged(string what);

  function createNewPatient(string memory _name, 
          address _address, string memory _keys) public returns (bool) {
    patient_address = _address;
    patient_name = _name;
    keys = _keys;
    emit PatientPropertyChanged("Created a new Patient");
  }

  function getMedicalRecords() public returns (string memory) {
    string med_records = Database.getInformation(name, address, keys, "MedicalRecords");
    return med_records;
  }

  function authorizeHospital(string memory _name,
          address _address, string memory _keys) public returns (bool) {
    bool result = Database.setInformation(_name, _address, "AddHospital", "_keys");
    return result;
  }

  function authorizeInsurance(string memory _name,
          address _address, string memory _keys) public returns (bool) {
    bool result = Database.setInformation(_name, _address, "AddInsurance", "_keys");
    return result;
  }

  function authorizePharmacy(string memory _name,
          address _address, string memory _keys) public returns (bool) {
    bool result = Database.setInformation(_name, _address, "AddPharmacy", "_keys");
    return result;
  }
}
