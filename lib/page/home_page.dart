import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../service/generator_number_random_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var generatedNumber = 0;
  var amountClicked = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "Meu App",
        style: GoogleFonts.roboto(),
      )),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              color: Colors.cyan,
              child: Text(
                "Ações do Usuário.",
                style: GoogleFonts.acme(fontSize: 20),
              ),
            ),
            SizedBox(
              width: 100,
              height: 100,
              child: Container(
                color: Colors.orange,
                child: Text(
                  "Foi clicado $amountClicked vezes.",
                  style: GoogleFonts.acme(fontSize: 20),
                ),
              ),
            ),
            Container(
              color: Colors.indigo,
              child: Center(
                  child: Text(
                "O número gerado foi $generatedNumber",
                style: GoogleFonts.acme(fontSize: 20),
              )),
            ),
            Expanded(
              child: Container(
                color: Colors.grey,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.red,
                      child: Text(
                        "Nome:",
                        style: GoogleFonts.acme(fontSize: 20),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      color: Colors.blue,
                      child: Text(
                        "Elder Lopes",
                        style: GoogleFonts.acme(fontSize: 20),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.green,
                      child: Text(
                        "30",
                        style: GoogleFonts.acme(fontSize: 20),
                      ),
                    ),
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            amountClicked = amountClicked + 1;
            generatedNumber =
                GeneratorNumberRandomService.generateRandomNumber(1000);
          });
        },
      ),
    );
  }
}
