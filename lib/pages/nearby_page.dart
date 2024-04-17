import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class NearbyPage extends StatelessWidget {
  const NearbyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nearby"),
      ),
      body: FlutterMap(
        options: const MapOptions(
          initialCenter: LatLng(22.3443, 91.7827),
          initialZoom: 13.0,
        ),
        children: [
          TileLayer(
            // z for zoom x for longitude and y for latitude
            // change the userAgentPackageName if you want to use your own package name
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'dev.fleaflet.flutter_map.example',
          ),
           MarkerLayer(
            markers: [
              Marker(
                point: LatLng(22.3445, 91.7830),
                width: 100,
                height: 200,
                child:  Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      child: const Text(
                        "user_1",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    Icon(Icons.location_on_outlined, color: Colors.black, size: 20),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
