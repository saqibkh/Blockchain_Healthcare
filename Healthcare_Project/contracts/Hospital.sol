pragma solidity ^0.5.0;

contract Hospital {
  address hospital_address;
  string hospital_name;
  string keys;

  // Event that is triggered when hospital properties are changed
  event PatientPropertyChanged(string what);

  function createNewHospital(string memory _name,
          address _address, string memory _keys) public returns (bool) {
    hospital_address = _address;
    hospital_name = _name;
    keys = _keys;
    emit PatientPropertyChanged("Created a new Hospital");
  }

  function getMedicalRecords(string memory _name,
          address _address) public returns (string memory) {
    string med_records = Database.getInformation(_name, _address, keys, "MedicalRecords");
    return med_records;
  }

  function setMedicalRecords(string memory _name,
          address _address, string memory _med_records) public returns (bool) {
    bool result = Database.setInformation(_name, _address, keys, "MedicalRecords"Information(
            _name, _address, keys, "MedicalRecords", _med_records);
    return result;
  }

  function getPrescriptions(string memory _name,
          address _address, string memory _keys) public returns (string memory) {
    string data_prescriptions = Database.getInformation(_name, _address, _keys, "Prescriptions");
    return data_prescriptions;
  }

  function setPrescriptions(string memory _name,
          address _address, string memory _keys, string memory _prescription) 
          public returns (bool) {
    bool result = Database.setInformation(_name, _address, _keys, "Prescriptions", _prescription);
    return result;
  }
}
