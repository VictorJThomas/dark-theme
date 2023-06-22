import 'package:flutter/material.dart';
import 'package:flutter_application_1/contratame.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/personajes_view.dart';
import 'package:flutter_application_1/momentos_view.dart';
import 'acerca_de_view.dart';

void main() {
  runApp(VidaApp());
}

class VidaApp extends StatelessWidget {
  const VidaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'En mi vida',
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
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
                    'N O',
                    style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'GillSans',),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'F U T U R E',
                    style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'GillSans',),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Dark',
              style: TextStyle(
                fontSize: 24,
                fontFamily: 'GillSans',
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 16),
            Container(
              child: const Text(
                'Como fan de la serie "Dark", puedo compartir contigo la importancia y el impacto que esta serie ha tenido en mí y en muchos otros seguidores. "Dark" no es solo una serie de ciencia ficción intrigante, sino que también representa un hito en la industria televisiva por su narrativa compleja y su enfoque único en los viajes en el tiempo.',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'GillSans',
                  fontWeight: FontWeight.normal,
                  color: Colors.white70,
                ),
              ),
            ),
            SizedBox(height: 16),
            const Text(
              'Una de las principales razones por las que "Dark" es tan importante para mí es su enfoque en la profundidad de los personajes y las relaciones humanas. A medida que la trama se desarrolla, nos adentramos en las historias personales de cada uno de los personajes, explorando sus motivaciones, secretos y conexiones en diferentes épocas. Esto crea una rica y fascinante red de relaciones que nos mantienen cautivados y nos hacen reflexionar sobre la naturaleza humana y el destino.',
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'GillSans',
                fontWeight: FontWeight.normal,
                color: Colors.white70,
              ),
            ),
            SizedBox(height: 16),
            const Text(
              'Una de las principales razones por las que "Dark" es tan importante para mí es su enfoque en la profundidad de los personajes y las relaciones humanas. A medida que la trama se desarrolla, nos adentramos en las historias personales de cada uno de los personajes, explorando sus motivaciones, secretos y conexiones en diferentes épocas. Esto crea una rica y fascinante red de relaciones que nos mantienen cautivados y nos hacen reflexionar sobre la naturaleza humana y el destino.',
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'GillSans',
                fontWeight: FontWeight.normal,
                color: Colors.white70,
              ),
            ),
            SizedBox(height: 16),
            const Text(
              'Otra razón por la que "Dark" es importante para mí es su enfoque en temas filosóficos y existenciales. La serie explora conceptos como el libre albedrío, el determinismo, el ciclo interminable del tiempo y la dualidad entre el bien y el mal. Estos temas nos invitan a cuestionar nuestra propia existencia y a reflexionar sobre el significado de nuestras acciones y decisiones.',
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'GillSans',
                fontWeight: FontWeight.normal,
                color: Colors.white70,
              ),
            ),
            const Text(
              'Por último, "Dark" destaca por su brillante ejecución técnica y cinematográfica. La calidad de la producción, la dirección artística y la música crean una atmósfera única y sombría que complementa perfectamente la historia. Además, el elenco talentoso y las actuaciones convincentes dan vida a los personajes de una manera memorable.',
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'GillSans',
                fontWeight: FontWeight.normal,
                color: Colors.white70,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
