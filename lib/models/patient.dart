class Patient {
  static const ID = "id";
  static const NAME = "name";
  static const CARETAKER_REF = "caretaker";
  static const AGE = "age";
  static const PREEXISTING_CONDITIONS = "preexisting_conditions";

  String _id;
  String _name;
  String _age;
  String _caretakerRef;
  List<dynamic> _preexisting_conditions;

  String get id => _id;

  String get name => _name;

  String get age => _age;

  String get caretakerRef => _caretakerRef;

  List<dynamic> get preexisting_conditions => _preexisting_conditions;

  Patient.fromMap(Map data) {
    _id = data[ID];
    _name = data[NAME];
    _age = data[AGE];
    _caretakerRef = data[CARETAKER_REF];
    _preexisting_conditions = data[PREEXISTING_CONDITIONS];
  }
  Patient.fromJson(Map<String, dynamic> json) {
    _id = json[ID];
    _name = json['name'];
    _age = json['age'];
    _preexisting_conditions = json['preexisting_conditions'].cast<String>();
    _caretakerRef = json[CARETAKER_REF];
  }
}
