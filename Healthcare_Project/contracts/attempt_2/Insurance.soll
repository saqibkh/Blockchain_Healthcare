pragma solidity ^0.5.0;

import "./Patient.sol";

contract Insurance {
  address private insurance_provider_address;
  string public insurance_name;
  Patient patient_list;

  function createnewInsurance(string memory _name) private {
    insurance_name = _name;
    insurance_provider_address = msg.sender;
  }

  function getPatientData (string memory patient_id) public returns (string memory) {
    string memory medical_data = patient_list.viewMedicalRecord(insurance_provider_address, patient_id);
    return medical_data;
  }
}
