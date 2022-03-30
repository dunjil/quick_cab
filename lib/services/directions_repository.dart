import 'package:quick_cab/exports.dart';

class DirectionsRepository {
  static const String _baseUrl =
      'https://maps.googleapis.com/maps/api/directions/json?';

  late Dio _dio;
  DirectionsRepository({Dio? dio}) : _dio = dio ?? Dio();

  Future<Directions?> getDirections(
      {@required LatLng? origin, @required LatLng? destination}) async {
    final response = await _dio.get(_baseUrl, queryParameters: {
      'origin': '${origin?.latitude},${origin?.longitude}',
      'destination': '${destination?.latitude},${destination?.longitude}',
      'key': googleAPIKey
    });
    if (response.statusCode == 200) {
      print("This is the data bro, $response");
      return Directions.fromMap(response.data);
    } else {
      return null;
    }
  }
}
