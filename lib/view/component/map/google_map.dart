import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:social_event/utils/app_images.dart';

import '../../../services/location_service.dart';

class ShowGoogleMap extends StatelessWidget {
  ShowGoogleMap(
      {super.key,
      this.latitude = 0,
      this.longitude = 0,
      this.myLocationEnabled = true,
      this.myLocationButtonEnabled = true,
      this.zoomControlsEnabled = true,
      required this.onTapLatLong});

  final double latitude;
  final bool myLocationEnabled;
  final bool myLocationButtonEnabled;
  final bool zoomControlsEnabled;

  final double longitude;
  Function(LatLng value) onTapLatLong;

  ShowGoogleMapController showGoogleMapController =
      Get.put(ShowGoogleMapController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ShowGoogleMapController>(
      builder: (controller) {
        return GoogleMap(
          mapType: MapType.normal,
          zoomControlsEnabled: zoomControlsEnabled,
          initialCameraPosition: controller.kGooglePlex ??
              const CameraPosition(
                target: LatLng(37.42796133580664, -122.085749655962),
                zoom: 14,
              ),
          myLocationEnabled: myLocationEnabled,
          myLocationButtonEnabled: myLocationButtonEnabled,
          cameraTargetBounds: CameraTargetBounds.unbounded,
          onTap: (LatLng latLng) {
            onTapLatLong(latLng);
            // controller.setMarker(latLng);
          },
          markers: Set<Marker>.of(controller.marker),
          onMapCreated: (GoogleMapController googleMapController) {
            controller.controller.complete(googleMapController);
          },
        );
      },
    );
  }
}

class ShowGoogleMapController extends GetxController {
  List<Marker> marker = [];

  num latitude = 0;
  num longitude = 0;

  Position? positions;

  List selectedOption = ["Paint Shop", "Remove Paint"];

  String selectRole = "Paint Shop";

  static ShowGoogleMapController get instance =>
      Get.put(ShowGoogleMapController());

  final Completer<GoogleMapController> controller =
      Completer<GoogleMapController>();

  CameraPosition? kGooglePlex;

  setMarker(LatLng latLng) async {
    Marker newMarker = Marker(
        markerId: const MarkerId("1"),
        position: LatLng(latLng.latitude, latLng.longitude));

    marker.add(newMarker);
    update();
  }

  getCurrentLocation() async {
    positions = await LocationService.getCurrentPosition();
    if (positions != null) {
      latitude = positions!.latitude;
      longitude = positions!.longitude;

      kGooglePlex = CameraPosition(
        target: LatLng(latitude.toDouble(), longitude.toDouble()),
        zoom: 14,
      );
      CameraPosition newCameraPosition = CameraPosition(
          target: LatLng(latitude.toDouble(), longitude.toDouble()), zoom: 14);

      final GoogleMapController googleMapController = await controller.future;
      await googleMapController
          .animateCamera(CameraUpdate.newCameraPosition(newCameraPosition));

      BitmapDescriptor customIcon = await BitmapDescriptor.asset(
          ImageConfiguration(
              devicePixelRatio: MediaQuery.of(Get.context!).devicePixelRatio),
          AppImages.marker,
          height: 56,
          width: 48);

      // Generate 10 markers within a 3-meter radius
      final random = Random();
      for (int i = 0; i < 10; i++) {
        double randomLatitudeOffset = (random.nextDouble() * i - 100) / 111000;
        double randomLongitudeOffset = (random.nextDouble() * i - 100) /
            (111000 * cos(latitude * pi / 180));

        double markerLatitude = latitude + randomLatitudeOffset;
        double markerLongitude = longitude + randomLongitudeOffset;

        marker.add(
          Marker(
            markerId: MarkerId("marker_$i"),
            position: LatLng(markerLatitude, markerLongitude),
            icon: customIcon,
            infoWindow: InfoWindow(title: "Marker $i"),
          ),
        );
      }

      // Update the map with new markers
      update();
    }
  }

  @override
  void onInit() {
    getCurrentLocation();
    super.onInit();
  }
}
