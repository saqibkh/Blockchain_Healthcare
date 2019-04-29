pragma solidity ^0.5.0;

import "./Patient.sol";

contract Pharmacy {
  address private pharmacy_address;
  string public pharmacy_name;
  Patient patient_list;

  function createnewPharmacy(string memory _name) private {
    pharmacy_name = _name;
    pharmacy_address = msg.sender;
  }

  function getPatientPrescription (string memory patient_id) public returns (string memory) {
    string memory prescription_data = patient_list.getPresecription(pharmacy_address, patient_id);
    return prescription_data;
  }
}
