import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Latitude : 위도(38)
  // Longitude : 경도(127)

  // 37.4944858
  // 127.030066
  final CameraPosition position = CameraPosition(target: LatLng(37.4944858, 127.030066), zoom: 14);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Google Map'),
      ),
      body: Container(
        child: GoogleMap(
          initialCameraPosition: this.position,
        ),
      ),
    );
  }
}