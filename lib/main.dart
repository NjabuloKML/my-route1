import 'package:flutter/material.dart';
import "dart:async";

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:googlemap2/pages/splush_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "MY ROUTE",
      home: SplushScreen(),
    );
  }
}

class MapSample extends StatefulWidget {
  const MapSample({super.key});

  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(-29.855319, 31.030013),
    zoom: 11.45,
  );
  // markers no:1
  final Marker _FisrtMarker = Marker(
      markerId: MarkerId("START POINT"),
      infoWindow: InfoWindow(title: "START"),
      icon: BitmapDescriptor.defaultMarker,
      position: LatLng(-29.962026886035463, 30.89147865630859));
  // markers no:2
  final Marker _SecondMarker = Marker(
      markerId: MarkerId("FINISH POINT"),
      infoWindow: InfoWindow(title: "FINISH"),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
      position: LatLng(-29.85506999372507, 31.026782690015963));

  // Connecting 2 markers
  final Polyline _polyline =
      Polyline(polylineId: PolylineId("_polyline"), points: [
    LatLng(-29.962026886035463, 30.89147865630859),
    LatLng(-29.85506999372507, 31.026782690015963)
  ]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        mapType: MapType.normal,
        markers: {_FisrtMarker, _SecondMarker},
        polylines: {_polyline},
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
    );
  }
}
