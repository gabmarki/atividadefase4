import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late GoogleMapController mapController;

  // Coordenadas simuladas para o campus/SP
  final LatLng _center = const LatLng(-23.563099, -46.656571);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Logística de Apoio')),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 15.0,
        ),
        markers: {
          const Marker(
            markerId: MarkerId('cvv_local'),
            position: LatLng(-23.561000, -46.655000),
            infoWindow: InfoWindow(title: 'CVV Mais Próximo', snippet: 'Atendimento 24h'),
          ),
          const Marker(
            markerId: MarkerId('psico_faculdade'),
            position: LatLng(-23.563099, -46.656571),
            infoWindow: InfoWindow(title: 'Apoio Psicopedagógico', snippet: 'Campus Principal'),
          ),
        },
      ),
    );
  }
}
