
import 'package:flutter/foundation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:parking_ui/googlemaps/map_key.dart';

import 'package:dio/dio.dart';
import 'direction_model.dart';

class DirectionsRepository {
  static const String _baseUrl =
      'https://maps.googleapis.com/maps/api/directions/json?';

  final Dio _dio;
  DirectionsRepository({Dio? dio}) : _dio = dio ?? Dio();
  Future<Direction?> getDirections({
    required LatLng origin,
    required LatLng destination,
  }) async {
    final response = await _dio.get(
      _baseUrl, 
      queryParameters: {
      'origin': ' ${origin.latitude},${origin.longitude}',
      'destination': '${destination.latitude},${destination.longitude}',
      'key': mapkey,
    },);
    // Check if respose is Scuccesfull
    if (response.statusCode == 200) {
      return (response.data);
    }
    return null;
  }
}
