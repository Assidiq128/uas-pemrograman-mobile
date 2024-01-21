import 'package:flutter/material.dart';
import 'package:uas_bangundatar/rumus/persegi.dart';
import 'package:uas_bangundatar/rumus/lingkaran.dart';
import 'package:uas_bangundatar/rumus/developer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UAS Flutter',
      theme: ThemeData(primarySwatch: Colors.amber),
      initialRoute: "/home",
      routes: {
        "/home": (context) => Home(),
        "/persegi": (context) => PagePersegi(),
        "/lingkaran": (context) => PageLingkaran(),
        "/developer": (context) => PageDeveloper(),
      },
    );
  }
}

class Home extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          'Anwari Dimas Assidiq - 2210020124',
          style: TextStyle(
            color: Colors.yellow,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Text("Halaman Home"),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/persegi");
                  },
                  child: Text("Persegi")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/lingkaran");
                  },
                  child: Text("Lingkaran")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/developer");
                  },
                  child: Text("Developer"))
            ],
          ),
        ),
      ),
    );
  }
}
