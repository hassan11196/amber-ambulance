import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class AmbRequestModel {
  static const PID = "pid";
  static const PATIENT_NAME = "patient_name";
  static const CARETAKER_NAME = "caretaker_name";
  static const CARETAKER_CONTACT = "caretaker_contact";
  static const PICKUP_LOCATION = "pickup_location";
  static const PICKUP_LANDMARKS = "pickup_landmark";
  static const DESTINATION = "destination";
  static const DESTINATION_NAME = "destination_name";
  static const PATIENT_CONDITION = "patient_condition";
  static const SPECIAL_NEEDS = "special_needs";

  String _pid;
  String _patient_name;
  String _caretaker_name;
  String _caretaker_contact;
  // _pickup_location
  // String _pickup_landmarks;
  // _destination
  String _destination_name;
  String _patient_condition;
  // String _special_needs;

  String get pid => _pid;

  String get patient_name => _patient_name;

  String get caretaker_name => _caretaker_name;

  String get caretaker_contact => _caretaker_contact;

  String get destination_name => _destination_name;

  String get patient_condition => _patient_condition;

  AmbRequestModel.fromMap(Map data) {
    String _d = data[DESTINATION];
    _pid = data[PID];
    _patient_name = data[PATIENT_NAME];
    _caretaker_name = data[CARETAKER_NAME];
    _caretaker_contact = data[CARETAKER_CONTACT];
    _destination_name = data[DESTINATION_NAME];
    _patient_condition = data[PATIENT_CONDITION];
    // _destination = _d.substring(0, _d.indexOf(','));
    // _dLatitude = double.parse(data[DESTINATION_LAT]);
    // _dLongitude = double.parse(data[DESTINATION_LNG]);
    // _uLatitude = double.parse(data[USER_LAT]);
    // _uLongitude = double.parse(data[USER_LAT]);
    // _distance = Distance.fromMap({
    //   "text": data[DISTANCE_TEXT],
    //   "value": int.parse(data[DISTANCE_VALUE])
    // });
  }
}

// class Distance {
//   String text;
//   int value;

//   Distance.fromMap(Map data) {
//     text = data["text"];
//     value = data["value"];
//   }

//   Map toJson() => {"text": text, "value": value};
// }

// class RequestModelFirebase {
//   static const ID = "id";
//   static const USERNAME = "username";
//   static const USER_ID = "userId";
//   static const DRIVER_ID = "driverId";
//   static const STATUS = "status";
//   static const POSITION = "position";
//   static const DESTINATION = "destination";

//   String _id;
//   String _username;
//   String _userId;
//   String _driverId;
//   String _status;
//   Map _position;
//   Map _destination;

//   String get id => _id;
//   String get username => _username;
//   String get userId => _userId;
//   String get driverId => _driverId;
//   String get status => _status;
//   Map get position => _position;
//   Map get destination => _destination;

//   RequestModelFirebase.fromSnapshot(DocumentSnapshot snapshot) {
//     _id = snapshot.data()[ID];
//     _username = snapshot.data()[USERNAME];
//     _userId = snapshot.data()[USER_ID];
//     _driverId = snapshot.data()[DRIVER_ID];
//     _status = snapshot.data()[STATUS];
//     _position = snapshot.data()[POSITION];
//     _destination = snapshot.data()[DESTINATION];
//   }

//   LatLng getCoordinates() =>
//       LatLng(_position['latitude'], _position['longitude']);
// }
