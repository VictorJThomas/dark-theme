import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter_application_1/contratame.dart';
import 'en_mi_vida_view.dart';
import 'personajes_view.dart';
import 'acerca_de_view.dart';
import 'momentos_view.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  List<String> images = [
    "lib/assets/dark_2.jpg",
    "lib/assets/dark_3.jpg",
    "lib/assets/dark_4.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DARK (2020)',
      theme: ThemeData(
        primarySwatch: MaterialColor(
          const Color.fromRGBO(252, 252, 252, 1).value,
          const <int, Color>{
            50: Color.fromRGBO(252, 252, 252, 1),
            100: Color.fromRGBO(252, 252, 252, 1),
            200: Color.fromRGBO(252, 252, 252, 1),
            300: Color.fromRGBO(252, 252, 252, 1),
            400: Color.fromRGBO(252, 252, 252, 1),
            500: Color.fromRGBO(252, 252, 252, 1),
            600: Color.fromRGBO(252, 252, 252, 1),
            700: Color.fromRGBO(252, 252, 252, 1),
            800: Color.fromRGBO(252, 252, 252, 1),
            900: Color.fromRGBO(252, 252, 252, 1),
          },
        ),
      ),
      home: Scaffold(
          backgroundColor: Color.fromRGBO(6, 5, 4, 1),
          drawer: Drawer(
            backgroundColor: Color.fromRGBO(252, 252, 252, 1),
            child: ListView(
              padding: EdgeInsetsDirectional.zero,
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(252, 252, 252, 1),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.0, top: 46.0),
                    child: Text(
                      'Menu',
                      style: TextStyle(fontSize: 24, color: Colors.black),
                    ),
                  ),
                ),
                ListTile(
                  title: const Text(
                    'DARK',
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'GillSans',
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyApp(),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: const Text(
                    'Personajes',
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'GillSans',
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PersonajesViewApp(),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: const Text(
                    'Momentos',
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'GillSans',
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MomentosViewApp(),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: const Text(
                    'Acerca De',
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'GillSans',
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DarkViewApp(),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: const Text(
                    'En mi vida',
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'GillSans',
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const VidaApp(),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: const Text(
                    'Contrátame',
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'GillSans',
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ContratameViewApp(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(120),
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromRGBO(252, 252, 252, 1),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: AppBar(
                toolbarHeight: 80,
                elevation: 0,
                backgroundColor: Colors.transparent,
                title: Container(
                  padding: const EdgeInsets.only(top: 30.0, right: 16.0),
                  alignment: Alignment.bottomLeft,
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'W E L C O M E',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'GillSans',
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'T R A V E L E R',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'GillSans',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          body: Container(
            child: _swiper(),
          )),
    );
  }

  Widget _swiper() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 34.0),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SizedBox(
              height: 450,
              child: Swiper(
                viewportFraction: 0.85,
                scale: 0.95,
                itemBuilder: (BuildContext context, int index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      images[index],
                      fit: BoxFit.fill,
                    ),
                  );
                },
                itemCount: images.length,
                autoplay: true,
                duration: 1500,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'D A R K',
            style: TextStyle(
              fontSize: 24,
              fontFamily: 'GillSans',
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(252, 252, 252, 1),
            ),
          ),
        ),
        const Padding(
          padding:
              EdgeInsets.only(top: 8.0, left: 16.0, right: 16.0, bottom: 16.0),
          child: Center(
            child: Text(
              'Ambientada en el ficticio pueblo de Winden, la trama se centra en la desaparición de un niño y los secretos oscuros que rodean a varias familias en diferentes épocas. ',
              style: TextStyle(
                fontFamily: 'GillSans',
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(116, 116, 116, 1),
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
