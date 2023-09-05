import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _HomePageState();
}

class _HomePageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 184, 219, 228),
        body: SizedBox(
          width: double.infinity,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            const SizedBox(
              height: 70,
            ),
            const Icon(
              Icons.person,
              size: 125,
              color: Colors.blueAccent,
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 30),
              height: 30,
              alignment: Alignment.center,
              child: const Row(
                children: [
                  Expanded(flex: 2, child: Text("Informe seu Email: ")),
                  Expanded(flex: 3, child: Text("Email")),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 30),
              height: 30,
              alignment: Alignment.center,
              child: const Row(
                children: [
                  Expanded(flex: 2, child: Text("Informe a Senha: ")),
                  Expanded(flex: 3, child: Text("Senha")),
                ],
              ),
            ),
            Expanded(child: Container()),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 30),
              color: Colors.green,
              height: 30,
              alignment: Alignment.center,
              child: const Text("Login"),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              height: 30,
              alignment: Alignment.center,
              child: const Text("Cadastro"),
            ),
            const SizedBox(
              height: 20,
            ),
          ]),
        ),
      ),
    );
  }
}
