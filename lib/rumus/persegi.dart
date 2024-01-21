import 'package:flutter/material.dart';
import 'package:uas_bangundatar/main.dart';

void main(List<String> args) {
  runApp(PagePersegi());
}

class PagePersegi extends StatelessWidget {
  const PagePersegi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HalamanUtama(),
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      initialRoute: "/persegi",
      routes: {
        "/home": (context) => MyApp(),
      },
    );
  }
}

class HalamanUtama extends StatefulWidget {
  const HalamanUtama({super.key});

  @override
  State<HalamanUtama> createState() => _HalamanUtamaState();
}

class _HalamanUtamaState extends State<HalamanUtama> {
  @override
  Widget build(BuildContext context) {
    TextEditingController cbilangan1 = TextEditingController();
    TextEditingController cbilangan2 = TextEditingController();
    TextEditingController chasil = TextEditingController();
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Persegi")),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Wrap(
            runSpacing: 8,
            children: [
              Center(child: Text("Hitung Luas Persegi")),
              TextField(
                controller: cbilangan1,
                decoration: InputDecoration(
                    label: Text("Masukan Panjang"),
                    border: OutlineInputBorder()),
              ),
              TextField(
                controller: cbilangan2,
                decoration: InputDecoration(
                    label: Text("Masukan Lebar"), border: OutlineInputBorder()),
              ),
              TextField(
                controller: chasil,
                decoration: InputDecoration(
                    label: Text("Hasil Luas Persegi"),
                    border: OutlineInputBorder()),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 180,
                    height: 40,
                    child: ElevatedButton(
                        onPressed: () {
                          double bilangan1 = double.parse(cbilangan1.text);
                          double bilangan2 = double.parse(cbilangan2.text);
                          double Hasil = bilangan1 * bilangan2;
                          chasil.text = Hasil.toString();
                        },
                        child: Text("Hitung Luas")),
                  ),
                  SizedBox(
                    width: 180,
                    height: 40,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/home");
                        },
                        child: Text("Kembali")),
                  )
                ],
              ),
              Center(child: Text("Rumus: Luas = Panjang x Lebar "))
            ],
          ),
        ));
  }
}
