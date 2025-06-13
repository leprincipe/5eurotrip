import 'package:flutter/material.dart';

void main() => runApp(FiveEuroTripApp());

class FiveEuroTripApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '5 Euro Trip',
      theme: ThemeData(primarySwatch: Colors.red),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('5 Euro Trip - Rome')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => TourDetailsPage()));
          },
          child: Text('Start Tour'),
        ),
      ),
    );
  }
}

class TourDetailsPage extends StatelessWidget {
  final List<String> places = [
    "Colosseum",
    "Vatican City",
    "Trevi Fountain",
    "Pantheon",
    "Piazza Navona"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tour Details')),
      body: ListView.builder(
        itemCount: places.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(places[index]),
            onTap: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => TourMapPage(place: places[index])));
            },
          );
        },
      ),
    );
  }
}

class TourMapPage extends StatelessWidget {
  final String place;
  TourMapPage({required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('$place Map')),
      body: Center(
        child: Text('Map view for $place will be here (placeholder).'),
      ),
    );
  }
}
