import 'package:cabdriver/models/Clocation.dart';
import 'package:cabdriver/models/patient.dart';
import 'package:cabdriver/models/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'dart:convert';
import 'caretaker.dart';

class AmbRequestModel {
  static const ID = "id";
  static const PATIENT = "patient";
  static const CARETAKER = "caretaker";
  static const PICKUP = "pickup";
  static const DESTINATION = "destination";
  static const PATIENT_CONDITION = "patient_condition";
  static const REASON_FOR_TRANSPORT = "reason_for_transport";
  static const DISTANCE = "distance";
  static const STATUS = "status";
  static const SPECIAL_NEEDS = "special_needs";
  static const DRIVERID = "driverID";

  String _id;
  Caretaker _caretaker;
  Patient _patient;
  CLocation _pickup;
  CLocation _destination;
  String _patientCondition;
  String _reasonForTransport;
  List<String> _specialNeeds;
  String _distance;
  String _status;

  String _driverId;

  String get id => _id;

  Caretaker get caretaker => _caretaker;
  set caretaker(Caretaker caretaker) => _caretaker = caretaker;
  Patient get patient => _patient;
  set patient(Patient patient) => _patient = patient;
  CLocation get pickup => _pickup;
  set pickup(CLocation pickup) => _pickup = pickup;
  CLocation get destination => _destination;
  set destination(CLocation destination) => _destination = destination;
  String get patientCondition => _patientCondition;
  set patientCondition(String patientCondition) =>
      _patientCondition = patientCondition;
  String get reasonForTransport => _reasonForTransport;
  set reasonForTransport(String reasonForTransport) =>
      _reasonForTransport = reasonForTransport;
  List<String> get specialNeeds => _specialNeeds;
  set specialNeeds(List<String> specialNeeds) => _specialNeeds = specialNeeds;
  String get distance => _distance;
  set distance(String distance) => _distance = distance;
  String get status => _status;

  String get driverId => _driverId;

  AmbRequestModel.fromMap(Map json) {
    _id = json['id'];
    _caretaker = json[CARETAKER] != null
        ? new Caretaker.fromJson(jsonDecode(json[CARETAKER]))
        : null;
    _patient = json['patient'] != null
        ? new Patient.fromMap(jsonDecode(json[PATIENT]))
        : null;
    _pickup = json[PICKUP] != null
        ? new CLocation.fromMap(jsonDecode(json[PICKUP]))
        : null;
    _destination = json[DESTINATION] != null
        ? new CLocation.fromMap(jsonDecode(json[DESTINATION]))
        : null;
    _patientCondition = json[PATIENT_CONDITION];
    _reasonForTransport = json[REASON_FOR_TRANSPORT];
    _specialNeeds = jsonDecode(json[SPECIAL_NEEDS]).cast<String>();
    _distance = json[DISTANCE];
    _status = json[STATUS];
    _driverId = json[DRIVERID];
  }
}

class AmbRequestModelFirebase {
  static const ID = "id";
  static const PATIENT = "patient";
  static const CARETAKER = "caretaker";
  static const PICKUP = "pickup";
  static const DESTINATION = "destination";
  static const PATIENT_CONDITION = "patient_condition";
  static const REASON_FOR_TRANSPORT = "reason_for_transport";
  static const DISTANCE = "distance";
  static const STATUS = "status";
  static const SPECIAL_NEEDS = "special_needs";
  static const DRIVERID = "driverId";

  String _id;
  Caretaker _caretaker;
  Patient _patient;
  CLocation _pickup;
  CLocation _destination;
  String _patientCondition;
  String _reasonForTransport;
  List<String> _specialNeeds;
  String _distance;
  String _status;

  String _driverId;

  String get id => _id;
  String get driver => _driverId;

  Caretaker get caretaker => _caretaker;
  set caretaker(Caretaker caretaker) => _caretaker = caretaker;
  Patient get patient => _patient;
  set patient(Patient patient) => _patient = patient;
  CLocation get pickup => _pickup;
  set pickup(CLocation pickup) => _pickup = pickup;
  CLocation get destination => _destination;
  set destination(CLocation destination) => _destination = destination;
  String get patientCondition => _patientCondition;
  set patientCondition(String patientCondition) =>
      _patientCondition = patientCondition;
  String get reasonForTransport => _reasonForTransport;
  set reasonForTransport(String reasonForTransport) =>
      _reasonForTransport = reasonForTransport;
  List<String> get specialNeeds => _specialNeeds;
  set specialNeeds(List<String> specialNeeds) => _specialNeeds = specialNeeds;
  String get distance => _distance;
  set distance(String distance) => _distance = distance;
  String get status => _status;
  set status(String status) => _status = status;

  AmbRequestModelFirebase.fromSnapshot(DocumentSnapshot snapshot) {
    _id = snapshot.data()['id'];
    _status = snapshot.data()[STATUS];
    // _caretaker = snapshot.data()[CARETAKER] != null
    //     ? new Caretaker.fromJson((snapshot.data()[CARETAKER]))
    //     : null;
    // _patient = snapshot.data()['patient'] != null
    //     ? new Patient.fromMap((snapshot.data()[PATIENT]))
    //     : null;
    _pickup = snapshot.data()[PICKUP] != null
        ? new CLocation.fromMap((snapshot.data()[PICKUP]))
        : null;
    _destination = snapshot.data()[DESTINATION] != null
        ? new CLocation.fromMap((snapshot.data()[DESTINATION]))
        : null;
    _patientCondition = snapshot.data()[PATIENT_CONDITION];
    _reasonForTransport = snapshot.data()[REASON_FOR_TRANSPORT];
    // _specialNeeds = jsonDecode(snapshot.data()[SPECIAL_NEEDS]).cast<String>();
    _distance = snapshot.data()[DISTANCE];
    _driverId = snapshot.data()[DRIVERID];
  }

  LatLng getCoordinates() => LatLng(_pickup.position.lat, _pickup.position.lng);
  LatLng getDestCoordinates() =>
      LatLng(_destination.position.lat, _destination.position.lng);
}
