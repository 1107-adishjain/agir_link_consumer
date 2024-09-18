import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class GetLocation {
  // Function to request permission and get the current location
  Future<Position> determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Check if location services are enabled
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled, return an error or handle this
      throw Exception('Location services are disabled.');
    }

    // Check for permission and request if not granted
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, return an error or handle this
        throw Exception('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are permanently denied, handle accordingly
      throw Exception('Location permissions are permanently denied');
    }

    // If permissions are granted, return the current position
    return await Geolocator.getCurrentPosition(
      locationSettings: const LocationSettings(
        accuracy: LocationAccuracy.high, // Use LocationAccuracy enum
        distanceFilter: 10, // Minimum distance (in meters) between updates
      ),
    );
  }
}
