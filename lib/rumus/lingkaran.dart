import 'package:flutter/material.dart';
import 'package:uas_bangundatar/main.dart';

void main(List<String> args) {
  runApp(PageLingkaran());
}

class PageLingkaran extends StatelessWidget {
  const PageLingkaran({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HalamanUtama(),
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: "/lingkaran",
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
    TextEditingController chasil = TextEditingController();
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Lingkaran")),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Wrap(
            runSpacing: 8,
            children: [
              Center(child: Text("Hitung Luas Lingkaran")),
              TextField(
                controller: cbilangan1,
                decoration: InputDecoration(
                    label: Text("Masukan Jari -Jari"),
                    border: OutlineInputBorder()),
              ),
              TextField(
                controller: chasil,
                decoration: InputDecoration(
                    label: Text("Hasil Luas Lingkaran"),
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
                          double Hasil = 3.14 * (bilangan1 * bilangan1);
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
              Center(child: Text("Rumus: Luas = 3.14 x (r x r)"))
            ],
          ),
        ));
  }
}
