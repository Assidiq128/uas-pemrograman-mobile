import 'package:flutter/material.dart';
import 'package:uas_bangundatar/main.dart';

void main(List<String> args) {
  runApp(PageDeveloper());
}

class PageDeveloper extends StatelessWidget {
  const PageDeveloper({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Developer(),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      initialRoute: "/developer",
      routes: {
        "/home": (context) => MyApp(),
      },
    );
  }
}

class Developer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text(
          'Developer',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              CircleAvatar(
                  backgroundColor: Colors.green, radius: 70),
              Text("Nama : Anwari Dimas Assidiq"),
              Text("NPM : 2210020124"),
              Text("Kelas : 5A SI Non Reguler Banjarbaru"),
              Text("Kontak : 085751341271"),
              Text("Alamat : Banjarbaru"),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/home");
                  },
                  child: Text("Kembali"))
            ],
          ),
        ),
      ),
    );
  }
}
