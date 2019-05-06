pragma solidity ^0.5.0;

import "./Patient.sol";

contract Provider {

  address private provider_address;
  string public provider_name;
  Patient patient_list;

  function createnewProvider(string memory _name) private {
    provider_name = _name;
    provider_address = msg.sender;
  }

  function getPatientData (string memory patient_ID) public returns (string memory) {
    string memory medical_data = patient_list.viewMedicalRecord(provider_address, patient_ID);
    return medical_data;
  }

  function addPatientData (string memory medical_data, string memory patient_ID) public returns (bool) {
    return(patient_list.addNewMedicalRecord(provider_address, medical_data, patient_ID));
  }

}
