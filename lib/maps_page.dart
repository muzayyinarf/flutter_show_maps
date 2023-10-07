import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapsPage extends StatefulWidget {
  const MapsPage({super.key});

  @override
  State<MapsPage> createState() => _MapsPageState();
}

class _MapsPageState extends State<MapsPage> {
  final tatakanCoffe = const LatLng(-6.1137736359163855, 106.13618296481157);
  late GoogleMapController mapC;

  Marker marker = const Marker(
    markerId: MarkerId("marker_1"),
    position: LatLng(-6.1137736359163855, 106.13618296481157),
    infoWindow: InfoWindow(
        title: 'Tatakan Coffe & Working Space',
        snippet:
            'Jalan Raya Jl. Komp. Makmur Jaya No.1, Taktakan, Serang, Serang City, Banten 42162'),
  );

  void onMapCreated(GoogleMapController controller) => mapC = controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GoogleMap(
          onMapCreated: onMapCreated,
          initialCameraPosition:
              CameraPosition(target: tatakanCoffe, zoom: 15.0),
          markers: {marker},
        ),
      ),
    );
  }
}
