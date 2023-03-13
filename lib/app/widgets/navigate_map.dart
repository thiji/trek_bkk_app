import 'package:flutter/material.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class NavigatedMap extends StatefulWidget {
  const NavigatedMap({super.key});

  @override
  State<NavigatedMap> createState() => _NavigatedMapState();
}

class _NavigatedMapState extends State<NavigatedMap> {
  CameraPosition? _initialCameraPosition;
  MapboxMapController? mapcontroller;
  bool _myLocationEnabled = true;

  @override
  void initState() {
    super.initState();
    _myLocationEnabled = true;
    // mapcontroller?.updateMyLocationTrackingMode(MyLocationTrackingMode.Tracking);
    _initialCameraPosition = const CameraPosition(
        target: LatLng(13.739462114167152, 100.51155300834212), zoom: 20);
  }

  @override
  void dispose() {
    print("dispose map2");
    // Future.delayed(Duration(seconds: 2)).then((value) => print('do this2'));
    // mapcontroller?.updateMyLocationTrackingMode(MyLocationTrackingMode.None);

    // _myLocationEnabled = false;
    mapcontroller?.dispose();
    print("do this");
    super.dispose();
  }

  _onMapCreated(MapboxMapController mapcontroller) async {
    print("onMapCreated");
    this.mapcontroller = mapcontroller;
  }

  _onStyleLoadedCallback() async {
    // List<List<double>> coordinates =
    //     ((response1["routes"]) as List)[0]['geometry']["coordinates"];

    // // List<Map<String, Object>> waypoints =
    // //     ((response1["waypoints"]) as List<Map<String, Object>>);
    // print("------------");

    // List<LatLng> points = coordinates.map((c) => LatLng(c[1], c[0])).toList();

    // print(points);

    // await mapcontroller!.addLine(LineOptions(
    //   geometry: points,
    //   lineColor: Colors.green.toHexStringRGB(),
    //   lineWidth: 3.0,
    // ));
    print("onstyleloading");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MapboxMap(
        accessToken: dotenv.env['MAPBOX_ACCESS_TOKEN'],
        initialCameraPosition: _initialCameraPosition!,
        onMapCreated: _onMapCreated,
        onStyleLoadedCallback: _onStyleLoadedCallback,
        myLocationEnabled: true,
        myLocationTrackingMode: MyLocationTrackingMode.TrackingGPS,
        minMaxZoomPreference: const MinMaxZoomPreference(14, 17),
      ),
    );
  }
}
