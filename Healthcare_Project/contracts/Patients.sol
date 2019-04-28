pragma solidity ^0.5.0;

import "./Med_Condition.sol";

contract Patient {
  string public name;
  string public dateOfBirth;
  string public gender;
  address[] medical_conditions;

  // Event that is triggered when patient properties are changed
  event PatientPropertyChanged(string what);

  function setNewPatient(string memory _name, string memory _dateOfBirth, string memory _gender) public {
    name = _name;
    dateOfBirth = _dateOfBirth;
    gender = _gender;
    emit PatientPropertyChanged("Added New Patient");
  }

  function setName(string memory _name) public {
    name = _name;
    emit PatientPropertyChanged("Name Changed");
  }

  function setDateOfBirth(string memory _dateOfBirth) public {
    dateOfBirth = _dateOfBirth;
    emit PatientPropertyChanged("Date Of Birth Changed");
  }

  function setGender(string memory _gender) public {
    gender = _gender;
    emit PatientPropertyChanged("Gender Changed");
  }

  function getName() public view returns (string memory) {
    return name;
  }

  function getDateOfBirth() public view returns (string memory) {
    return dateOfBirth;
  }

  function getGender() public view returns (string memory) {
    return gender;
  }

  function addNewCondition(string memory _id, string memory _description) public {
    Med_Condition new_condition = condition(_id, _description);
    medical_conditions.push(new_condition);
    emit PatientPropertyChanged("Added new Patient Condition");
  }
 
  function getConditions() public view returns (address[] memory){
    return medical_conditions;
  }

}
