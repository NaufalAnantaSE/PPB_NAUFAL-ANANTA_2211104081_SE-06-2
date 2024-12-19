import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MyMaps extends StatefulWidget {
  @override
  _MyMapsState createState() => _MyMapsState();
}

class _MyMapsState extends State<MyMaps> {
  static final LatLng _kMapCenter = LatLng(-7.431391, 109.247833);
  static final CameraPosition _kInitialPosition = CameraPosition(
    target: _kMapCenter,
    zoom: 11.0,
  );

  late GoogleMapController _mapController;
  LatLng? _pickedLocation;
  Marker? _selectedMarker;


  void _onMapTap(LatLng position) {
    setState(() {
      _pickedLocation = position;
      _selectedMarker = Marker(
        markerId: MarkerId('selectedLocation'),
        position: position,
        infoWindow: InfoWindow(
          title: 'Selected Location',
          snippet: '${position.latitude}, ${position.longitude}',
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Google Maps Demo'),
      ),
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: _kInitialPosition,
            myLocationEnabled: true,
            onTap: _onMapTap,
            markers: _selectedMarker != null ? {_selectedMarker!} : {},
            onMapCreated: (GoogleMapController controller) {
              _mapController = controller;
            },
          ),
          if (_pickedLocation != null)
            Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Selected Location:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Latitude: ${_pickedLocation!.latitude.toStringAsFixed(6)}',
                    ),
                    Text(
                      'Longitude: ${_pickedLocation!.longitude.toStringAsFixed(6)}',
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {

                        print(
                            'Location Picked: ${_pickedLocation!.latitude}, ${_pickedLocation!.longitude}');
                      },
                      child: Text('Confirm Location'),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
