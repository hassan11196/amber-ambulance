import 'package:AmbER/helpers/constants.dart';
import 'package:AmbER/models/rider.dart';

class RiderServices {
  String collection = "users";

  Future<RiderModel> getRiderById(String id) =>
      firebaseFiretore.collection(collection).doc(id).get().then((doc) {
        return RiderModel.fromSnapshot(doc);
      });
}
