import 'package:flutter/material.dart';
import 'package:flutter_application_1/contratame.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/personajes_view.dart';
import 'package:flutter_application_1/momentos_view.dart';
import 'en_mi_vida_view.dart';

void main() {
  runApp(DarkViewApp());
}

class DarkViewApp extends StatelessWidget {
  const DarkViewApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DARK',
      debugShowCheckedModeBanner: false,
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
      home: const DarkPage(),
    );
  }
}

class DarkPage extends StatelessWidget {
  const DarkPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    'N O T  W H E R E',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'GillSans',
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'B U T  W H E N',
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
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Dark',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Información de la película:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 8),
            Text(
              '"Dark" es una serie de televisión alemana de ciencia ficción y thriller creada por Baran bo Odar y Jantje Friese. La serie se estrenó el 1 de diciembre de 2017 en Netflix y consta de tres temporadas, con un total de 26 episodios.',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            Text(
              'La trama de "Dark" se desarrolla en la pequeña ciudad ficticia de Winden, donde se produce la desaparición de un niño llamado Erik. A medida que la historia avanza, se revela que la desaparición de Erik está conectada con una serie de sucesos misteriosos y una compleja red de relaciones entre las familias de la ciudad.',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            SizedBox(height: 16),
            Text(
              'Información de los productores:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Baran bo Odar nació el 18 de abril de 1978 en Winterthur, Suiza, y se crió en Alemania. Antes de "Dark", dirigió películas como "The Silence" (2010) y "Who Am I" (2014). Odar también ha dirigido varios episodios de la serie "The Dark Side of the Moon" y ha trabajado en proyectos de televisión en Alemania.',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            SizedBox(height: 16),
            Text(
              'Datos curiosos:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Los creadores de "Dark", Baran bo Odar y Jantje Friese, mencionaron que se inspiraron en varias obras, incluyendo "Stranger Things", "Twin Peaks" y "Lost". Sin embargo, "Dark" se destaca por su enfoque único en los viajes en el tiempo y su intrincada narrativa.',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            SizedBox(height: 8),
            Text(
              'Aunque la trama de "Dark" se desarrolla en la ficticia ciudad de Winden, la serie fue rodada principalmente en y alrededor de Berlín, Alemania. Muchas de las locaciones, como los bosques y las cuevas, se encuentran en los alrededores de la ciudad.',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
