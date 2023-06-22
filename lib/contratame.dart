import 'package:flutter/material.dart';
import 'package:flutter_application_1/en_mi_vida_view.dart';
import 'package:flutter_application_1/main.dart';
import 'acerca_de_view.dart';
import 'momentos_view.dart';

void main() {
  runApp(const ContratameViewApp());
}

class ContratameViewApp extends StatelessWidget {
  const ContratameViewApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personajes',
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
      home: HomePage(),
      routes: {
        '/detail': (context) => DetailPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
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
                    builder: (context) => const ContratameViewApp(),
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
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Contratame!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Victor J. Thomas',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              'YWeb / Mobile Developer',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Informacion de Contacto:',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              'Email: victorjthomas10@gmail.com',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
              ),
            ),
            Text(
              '# (829) 826-9264',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
