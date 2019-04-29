pragma solidity ^0.5.0;

contract Database {
  string private d_tokens;
  address d_address;
  string d_name;  
  string d_medicalrecord;


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

  function verifyProvider(string memory _tokens, address _provider_address) public returns (bool) {
    //bool result = readDatabase(_tokens, "isApprovedProvider", _provider_address);
    d_tokens = _tokens;
    d_address = _provider_address;
    return true;
  }

  function addNewMedicalRecord(string memory _tokens, address _provider_address,
                               string memory _medicalrecord) public returns (bool) {
    //bool result = writetoDatabase(_tokens, "medicalrecord", "add", _medicalrecord);
    d_tokens = _tokens;
    d_address = _provider_address;
    d_medicalrecord = _medicalrecord;
    return true;
  }

  function viewMedicalRecord(string memory _tokens, address _provider_address) public returns (string memory) {
    //string memory medicalrecord = readDatabase(_tokens, "medical_records");
    d_tokens = _tokens;
    d_address = _provider_address;
    string memory medicalrecord = "aaaaaa";
    return medicalrecord;
  }
}



//writeDatabase(tokens, wheretowrite, whattowrite)
//readDatabase(tokens, whattoread)
