class NewContact {
  String _username;
  String _profilepic;
  String _status;

  NewContact(String username, String profilepic, String status) {
    this._username = username;
    this._profilepic = profilepic;
    this._status = status;
  }

  String get username {
    return this._username;
  }

  String get profilepic {
    return this._profilepic;
  }

  String get status {
    return this._status;
  }
}
