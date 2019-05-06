pragma solidity ^0.5.0;

import "./Patient.sol";
import "./Hospital.sol";
import "./Pharmacy.sol";
import "./Insurance.sol";

contract Governement {
  Patient[] list_patient;
  Hospital list_hospital;
  Pharmacy list_pharmacy;
  Insurance list_insurance;
  
  function createnewPatient(string memory _name,
          address _address, string memory _keys) private returns (bool) {
    Patient new_patient = createNewPatient(_name, _address, _keys);
    list_patient.push(new_patient);
  }

  function createnewHospital(string memory _name,
          address _address, string memory _keys) private returns (bool) {
    Hospital new_hospital = createNewHospital(_name, _address, _keys);
    list_hospital.push(new_hospital);
  }

  function createnewPharmacy(string memory _name,
          address _address, string memory _keys) private returns (bool) {
    Hospital new_pharmacy = createNewPharmacy(_name, _address, _keys);
    list_pharmacy.push(new_pharmacy);
  }

  function createnewInsurance(string memory _name,
          address _address, string memory _keys) private returns (bool) {
    Hospital new_insurance = createNewInsurance(_name, _address, _keys);
    list_insurance.push(new_insurance);
  }
}
