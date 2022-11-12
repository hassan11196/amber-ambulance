import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

const GOOGLE_MAPS_API_KEY = "AIzaSyBoYibNp1J1dfjlhv0Dmfapqvi1raU_KMg";

// firebase
final Future<FirebaseApp> initialization = Firebase.initializeApp();

FirebaseFirestore firebaseFiretore = FirebaseFirestore.instance;
FirebaseAuth auth = FirebaseAuth.instance;
FirebaseMessaging fcm = FirebaseMessaging();
