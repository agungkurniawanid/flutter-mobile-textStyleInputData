import 'package:flutter/material.dart';
import 'package:textstyle/mybodycontent.dart';

class MyText extends StatefulWidget {
  final DataInput dataInput;

  MyText({required this.dataInput});

  @override
  State<MyText> createState() => _MyTextState();
}

class _MyTextState extends State<MyText> {
  Map<int, Color> colorList = {
    0: const Color(0xFFBC3232),
    1: const Color(0xFFFF9700),
    2: const Color(0xFF0E84C1),
  };

  late Map<int, String> dataKeluaran;

  late List<Widget> listCard;

  Map<int, IconData> listIcon = {
    0: Icons.person,
    1: Icons.business,
    2: Icons.work,
  };

  @override
  void initState() {
    super.initState();
    // Inisialisasi dataKeluaran di sini
    dataKeluaran = {
      0: widget.dataInput.namaLengkap,
      1: widget.dataInput.dimanaAndaBekerja,
      2: widget.dataInput.dibidangApaAndaAhli, // Contoh ahli bidang
    };

    // Inisialisasi listCard di sini
    listCard = List.generate(
      3,
      (index) => Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20.0),
            height: 100.0,
            decoration: BoxDecoration(
              color: colorList[index],
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Row(
              children: [
                Icon(listIcon[index], size: 35.0, color: Colors.white),
                const SizedBox(width: 5.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      dataKeluaran[index] ?? "",
                      style: const TextStyle(
                        color: Colors.white,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                    Text(
                      "Data ke-${index + 1} adalah ${dataKeluaran[index] ?? ""}",
                      style: const TextStyle(
                        color: Colors.white,
                        fontFamily: "Poppins",
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 10.0), // Jarak antara setiap Card
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text("Welcome"),
          backgroundColor: Colors.black,
          shadowColor: Colors.transparent,
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(children: [
              Image.network("https://i.imgur.com/PfA4WpD.png"),
              const SizedBox(
                height: 10.0,
              ),
              const Row(
                children: [
                  Text(
                    "Welcome to App",
                    style: TextStyle(
                        fontSize: 28.0,
                        color: Colors.white,
                        fontFamily: "Poppins"),
                  ),
                ],
              ),
              const Row(
                children: [
                  Text(
                    "Berikut adalah data-data yang anda masukkan",
                    style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                        fontFamily: "Poppins"),
                  ),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              ...listCard,
            ]),
          ),
        ),
      ),
    );
  }
}
