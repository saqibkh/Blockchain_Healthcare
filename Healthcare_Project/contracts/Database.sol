pragma solidity ^0.5.0;

contract Database {
  string private d_tokens;
  address d_address;
  string d_name;  
  string d_medicalrecord;
  string d_patient_ID;
  string d_prescription;

  function addProvider(string memory _tokens, address _provider_address,
                       string  memory _provider_name) public returns (bool) {
    //bool result = writetoDatabase(_tokens, "provider", "add", _provider_address, _provider_name)
    d_tokens = _tokens;
    d_address = _provider_address;
    d_name = _provider_name;
    return true;
  }

  function deleteProvider(string memory _tokens, address _provider_address,
                          string  memory _provider_name) public returns (bool) {
    //bool result = writetoDatabase(_tokens, "provider", "remove", _provider_address, _provider_name)
    d_tokens = _tokens;
    d_address = _provider_address;
    d_name = _provider_name;
    return true;
  }

  function verifyProvider(string memory _tokens, address _provider_address, string memory patient_ID) public returns (bool) {
    //bool result = readDatabase(_tokens, "isApprovedProvider", _provider_address, patient_ID);
    d_tokens = _tokens;
    d_address = _provider_address;
    d_patient_ID = patient_ID;
    return true;
  }

  function verifyInsurance(string memory _tokens, address _address, string memory patient_ID) public returns (bool) {
    //bool result = readDatabase(_tokens, "isApprovedInsurance", _address, patient_ID);
    d_tokens = _tokens;
    d_address = _address;
    d_patient_ID = patient_ID;
    return true;
  }

  function verifyPharmacy(string memory _tokens, address _address, string memory patient_ID) public returns (bool) {
    //bool result = readDatabase(_tokens, "isApprovedPharmacy", _address, patient_ID);
    d_tokens = _tokens;
    d_address = _address;
    d_patient_ID = patient_ID;
    return true;
  }

  function addNewMedicalRecord(string memory _tokens, address _provider_address,
                               string memory _medicalrecord, string memory patient_ID) public returns (bool) {
    //bool result = writetoDatabase(_tokens, "medicalrecord", "add", _medicalrecord, patient_ID);
    d_tokens = _tokens;
    d_address = _provider_address;
    d_medicalrecord = _medicalrecord;
    d_patient_ID = patient_ID;
    return true;
  }

  function viewMedicalRecord(string memory _tokens, address _provider_address, string memory patient_ID) public returns (string memory) {
    //string memory medicalrecord = readDatabase(_tokens, "medical_records", patient_ID);
    d_tokens = _tokens;
    d_address = _provider_address;
    string memory medicalrecord = "";
    d_patient_ID = patient_ID;
    return medicalrecord;
  }

  function getPrescription(string memory _tokens, address _address, string memory patient_ID) public returns (string memory) {
    //bool result = readDatabase(_tokens, "precription", prescription, patient_ID);
    d_tokens = _tokens;
    d_address = _address;
    d_patient_ID = patient_ID;
    string memory prescription = "";
    return prescription;
  }

  function setPrescription(string memory _tokens, address _address, string memory prescription, string memory patient_ID) public returns (bool) {
    //string memory medicalrecord = readDatabase(_tokens, "precription", patient_ID);
    d_tokens = _tokens;
    d_address = _address;
    d_patient_ID = patient_ID;
    d_prescription = prescription;
    return true;
  }


}



//writeDatabase(tokens, wheretowrite, whattowrite)
//readDatabase(tokens, whattoread)
