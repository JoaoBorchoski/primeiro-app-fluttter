import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    'assets/imgs/background.png',
                    fit: BoxFit.cover,
                  )),
              Container(
                color: Colors.black.withOpacity(0.6),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const FlutterLogo(
                        textColor: Colors.white,
                        size: 150,
                        style: FlutterLogoStyle.horizontal,
                      ),
                      ElevatedButton(
                          onPressed: () {}, child: const Text('Entrar no APP'))
                    ]),
              )
            ],
          ),
        ));
  }
}
