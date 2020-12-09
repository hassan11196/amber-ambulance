class CLocation {
  static const POSITION = "position";
  static const NAME = "name";
  static const LANDMARKS = "landmarks";

  Position _position;
  String _name;
  List<dynamic> _landmarks;

  Position get position => _position;

  String get name => _name;

  List<dynamic> get landmarks => _landmarks;

  CLocation.fromMap(Map data) {
    _position = data['position'] != null
        ? new Position.fromJson(data['position'])
        : null;
    ;
    _name = data[NAME];
    _landmarks = data[LANDMARKS];
  }

  CLocation.fromJson(Map<String, dynamic> json) {
    _position = json['position'] != null
        ? new Position.fromJson(json['position'])
        : null;
    _landmarks = json['landmarks'].cast<String>();
  }
}

class Position {
  static const LAT = "lat";
  static const LNG = "lng";

  double _lat;
  double _lng;

  double get lat => _lat;
  double get lng => _lng;

  Position.fromMap(Map data) {
    _lat = double.parse(data[LAT]);
    _lng = double.parse(data[LNG]);
  }
  Position.fromJson(Map<String, dynamic> json) {
    _lat = double.parse(json['lat']);
    _lng = double.parse(json['lng']);
  }
}
