import 'package:flutter/material.dart';
import 'package:trek_bkk_app/app/widgets/navigate_map.dart';

class MapGeneratedPage extends StatefulWidget {
  const MapGeneratedPage({super.key});

  @override
  State<MapGeneratedPage> createState() => _MapGeneratedPageState();
}

class _MapGeneratedPageState extends State<MapGeneratedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(), body: SafeArea(child: NavigatedMap()));
  }
}
