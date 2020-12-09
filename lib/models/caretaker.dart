class Caretaker {
  static const ID = "id";
  static const NAME = "name";
  static const AGE = "age";
  static const CNIC = "cnic";
  static const CONTACT_NUM = "contact_num";

  String _id;
  String _name;
  String _contactNum;
  String _cnic;
  String _age;

  String get id => _id;

  String get name => _name;

  String get contactNum => _contactNum;

  String get cnic => _cnic;

  String get age => _age;

  Caretaker.fromMap(Map data) {
    _id = data[ID];
    _name = data[NAME];
    _age = data[AGE];
    _contactNum = data[CONTACT_NUM];
    _cnic = data[CNIC];
  }
  Caretaker.fromJson(Map<String, dynamic> json) {
    _id = json[ID];
    _name = json['name'];
    _cnic = json['cnic'];
    _contactNum = json['contact_num'];
    _age = json[AGE];
  }
}
