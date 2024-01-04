import 'package:flutter/material.dart';
import 'package:textstyle/showtext.dart';

class MyBodyContent extends StatefulWidget {
  const MyBodyContent({super.key});

  @override
  State<MyBodyContent> createState() => _MyBodyContentState();
}

class _MyBodyContentState extends State<MyBodyContent> {
  // Import untuk mengambil nilai dari inputan variable
  late TextEditingController _textFieldController1;
  late TextEditingController _textFieldController2;
  late TextEditingController _textFieldController3;

  //! list step input
  List<Widget> tahapInput = List.generate(
    5,
    (index) => Container(
      width: 25.0,
      height: 25.0,
      decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: Colors.white, width: 2.5),
          borderRadius: BorderRadius.circular(25.0)),
    ),
  );

  // Menyimpan nilai input ke dalam variable
  String inputNamaLengkap = '';
  String inputDimanaAndaBekerja = '';
  String inputDibidangApaAndaAhli = '';

  @override
  void initState() {
    super.initState();
    _textFieldController1 = TextEditingController();
    _textFieldController2 = TextEditingController();
    _textFieldController3 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 20.0),
              child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Text Sesuai Input",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30.0,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            "Animasi text akan ditampilkan jika sudah input \ndata dan menekan finishing button",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.normal),
                            softWrap: true,
                          ),
                        ]),
                  ]),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 500.0,
              padding: const EdgeInsets.all(20.0),
              margin: const EdgeInsets.all(20.0),
              decoration: const BoxDecoration(
                  color: Color(0xFF025EFD),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Column(
                children: [
                  const Text(
                    "Masukkan Data Sesuai Jika sudah tekan next sampai Finish!",
                    style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600,
                        fontSize: 24.0),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      tahapInput[0],
                      tahapInput[1],
                      tahapInput[2],
                      tahapInput[3],
                      tahapInput[4]
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  TextField(
                    controller: _textFieldController1,
                    onChanged: (value) {
                      setState(() {
                        inputNamaLengkap = value;
                      });
                    },
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                    decoration: const InputDecoration(
                        hintText: "Nama Lengkap",
                        hintStyle: TextStyle(color: Colors.white54),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
                            borderSide:
                                BorderSide(color: Colors.white, width: 3.0))),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  TextField(
                    controller: _textFieldController2,
                    onChanged: (value) {
                      setState(() {
                        inputDimanaAndaBekerja = value;
                      });
                    },
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                    decoration: const InputDecoration(
                        hintText: "Dimana anda bekerja?",
                        hintStyle: TextStyle(color: Colors.white54),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
                            borderSide:
                                BorderSide(color: Colors.white, width: 3.0))),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  TextField(
                    controller: _textFieldController3,
                    onChanged: (value) {
                      setState(() {
                        inputDibidangApaAndaAhli = value;
                      });
                    },
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                    decoration: const InputDecoration(
                        hintText: "Dibidan apa anda ahli?",
                        hintStyle: TextStyle(color: Colors.white54),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
                            borderSide:
                                BorderSide(color: Colors.white, width: 3.0))),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      DataInput inputData = DataInput(
                          namaLengkap: inputNamaLengkap,
                          dimanaAndaBekerja: inputDimanaAndaBekerja,
                          dibidangApaAndaAhli: inputDibidangApaAndaAhli);

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyText(dataInput: inputData),
                          ));
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xFF000000),
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        )),
                        minimumSize: MaterialStateProperty.all(
                            const Size(double.infinity, 60.0))),
                    child: const Text("Next Step"),
                  )
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}

class DataInput {
  final String namaLengkap;
  final String dimanaAndaBekerja;
  final String dibidangApaAndaAhli;

  DataInput({
    required this.namaLengkap,
    required this.dimanaAndaBekerja,
    required this.dibidangApaAndaAhli,
  });
}
