import 'package:flutter/material.dart';

void main() {
  runApp(KonversiSuhu());
}

class KonversiSuhu extends StatelessWidget {
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
  List<String> history = [];

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
                  hasilkonversi();
                },
                child: Text('Konversi'),
              ),
            ),
            SizedBox(height: 20.0),
            Text('Riwayat Konversi'),
            Expanded(
              child: ListView.builder(
                itemCount: history.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(history[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void hasilkonversi() {
    double hasil = perhitungansuhu(inputSuhu, inputAltenatif, outputSuhu);
    String historyItem =
        '$inputSuhu $inputAltenatif ke $outputSuhu = $hasil $outputSuhu';
    setState(() {
      hasilKonversi = hasil;
      history.insert(0, historyItem);
    });
  }

  double perhitungansuhu(double suhu, String inputUnit, String outputUnit) {
    if (inputUnit == 'Celcius' && outputUnit == 'Kelvin') {
      return suhu + 273;
    } else if (inputUnit == 'Celcius' && outputUnit == 'Reamur') {
      return suhu * 4 / 5;
    } else {
      return suhu;
    }
  }
}
