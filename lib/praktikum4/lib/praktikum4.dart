import 'package:flutter/material.dart';

void main() {
  runApp(KonversiSuhu());
}

class KonversiSuhu extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Konverter Suhu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: KonversiSuhuPage(),
    );
  }
}

class KonversiSuhuPage extends StatefulWidget {
  @override
  _KonversiSuhuPageState createState() => _KonversiSuhuPageState();
}

class _KonversiSuhuPageState extends State<KonversiSuhuPage> {
  double inputSuhu = 0.0;
  String inputAltenatif = 'Celcius';
  String outputSuhu = 'Kelvin';
  double hasilKonversi = 0.0;

  final List<String> units = ['Celcius', 'Kelvin', 'Reamur'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Konverter Suhu"),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  inputSuhu = double.tryParse(value) ?? 0.0;
                });
              },
              decoration: InputDecoration(
                labelText: 'Masukkan Suhu (Celcius)',
              ),
            ),
            DropdownButton<String>(
              value: outputSuhu,
              onChanged: (newValue) {
                setState(() {
                  outputSuhu = newValue!;
                  // Panggil fungsi konversi otomatis di sini
                  hasilkonversi();
                });
              },
              items: units.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(height: 20.0),
            Text('Hasil'),
            Text('$hasilKonversi $outputSuhu'),
            SizedBox(height: 20.0),
            Container(
              child: ElevatedButton(
                onPressed: () {
                  // Panggil fungsi konversi saat tombol ditekan
                  hasilkonversi();
                },
                child: Text('Konversi'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void hasilkonversi() {
    hasilKonversi = perhitungansuhu(inputSuhu, inputAltenatif, outputSuhu);
  }

  double perhitungansuhu(double suhu, String inputUnit, String outputUnit) {
    if (inputUnit == 'Celcius' && outputUnit == 'Kelvin') {
      return suhu + 273;
    } else if (inputUnit == 'Celcius' && outputUnit == 'Reamur') {
      return suhu * 4 / 5;
    } else {
      return suhu; // Konversi antara unit yang sama, hasil tetap sama
    }
  }
}
