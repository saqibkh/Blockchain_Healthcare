pragma solidity ^0.5.0;

import "./Database.sol";

contract Patient {
  string public name;
  string public gender;
  string public publicID;
  string private dateOfBirth;
  Database my_database;

  // Event that is triggered when patient properties are changed
  event PatientPropertyChanged(string what);

  function setName(string memory _name) private {
    name = _name;
    emit PatientPropertyChanged("Name Changed");
  }

  function setDateOfBirth(string memory _dateOfBirth) private {
    dateOfBirth = _dateOfBirth;
    emit PatientPropertyChanged("Date Of Birth Changed");
  }

  function setGender(string memory _gender) private {
    gender = _gender;
    emit PatientPropertyChanged("Gender Changed");
  }

  function generateTokens() public returns (string memory) {
    string memory token = "";
    return token;
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

  // This function adds new healthcare providers to the list
  // of approved providers allowed to access the medical records
  function addNewProvider(address provider_address,
                          string memory provider_name) public { 
    string memory tokens = generateTokens();
    my_database.addProvider(tokens, provider_address, provider_name);
    emit PatientPropertyChanged("Change in list of approved providers"); 
  }

  // This function deletes a previously existing healthcare provider
  function deleteProvider(address provider_address,
                          string memory provider_name) public {
    string memory tokens = generateTokens();
    my_database.deleteProvider(tokens, provider_address, provider_name);
    emit PatientPropertyChanged("Change in list of approved providers");
  }

  function addNewMedicalRecord(address provider_address, 
                               string memory _newMedicalRecord, string memory patient_ID) public returns (bool) {
    string memory tokens = generateTokens();
    bool result = false;
    if (my_database.verifyProvider(tokens, provider_address, patient_ID)){
      result = my_database.addNewMedicalRecord(tokens, provider_address, _newMedicalRecord, patient_ID);
      emit PatientPropertyChanged("Request to add new Medical Records");
    } else {
      emit PatientPropertyChanged("Request to add new Medical Records Failed");
    }
    return result;
  }

  function viewMedicalRecord(address provider_address, string memory patient_ID) public returns (string memory) {
    string memory tokens = generateTokens();
    if (my_database.verifyProvider(tokens, provider_address, patient_ID)){
      string memory medical_records = my_database.viewMedicalRecord(tokens, provider_address, patient_ID);
      emit PatientPropertyChanged("Request to view Medical Records");
      return medical_records;
    } else {
      emit PatientPropertyChanged("Request to view Medical Records Failed");
      return ("Failed");
    }
  }

  function setNewPrescription(address provider_address, string memory patient_ID, 
                              string memory new_prescription) public returns (bool) {
    string memory tokens = generateTokens();
    bool result = false;
    if (my_database.verifyProvider(tokens, provider_address, patient_ID)){
      result = my_database.setPrescription(tokens, provider_address, new_prescription, patient_ID);
      emit PatientPropertyChanged("Request to add new prescription");
    } else {
      emit PatientPropertyChanged("Request to add new prescription failed");
    }
    return result;
  }

  function getPresecription(address _address, string memory patient_ID) public returns (string memory) {
    string memory tokens = generateTokens();
    if (my_database.verifyPharmacy(tokens, _address, patient_ID)){
      string memory prescription = my_database.getPrescription(tokens, _address, patient_ID);
      emit PatientPropertyChanged("Request to view prescription");
      return prescription;
    } else {
      emit PatientPropertyChanged("Request to view prescription failed");
    }
    return "Failed";
  }



}
