import 'package:flutter/material.dart';
import 'package:flutter_application_1/contratame.dart';
import 'package:flutter_application_1/en_mi_vida_view.dart';
import 'package:flutter_application_1/main.dart';
import 'acerca_de_view.dart';
import 'momentos_view.dart';

void main() {
  runApp(const PersonajesViewApp());
}

class PersonajesViewApp extends StatelessWidget {
  const PersonajesViewApp({Key? key}) : super(key: key);

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
  final List<ItemModel> items = [
    ItemModel(
        'Jonas Kahnwald',
        'Jonas Kahnwald es el personaje principal de la serie. Es el hijo de Michael y Hannah Kahnwald. Como adolescente es una persona reflexiva a quien el suicidio de su padre lo golpea con fuerza, incluso peor después de descubrir su verdadera identidad.',
        'lib/assets/Jonas.jpg'),
    ItemModel(
        'Martha Nielsen',
        'Martha Nielsen Es el personaje principal femenino de la serie. Es la hija mediana y única hija de Ulrich y Katharina Nielsen, y la hermana menor de Magnus y hermana mayor de Mikkel Nielsen. En la tercera temporada se descubre su verdadera identidad.',
        'lib/assets/Martha.jpg'),
    ItemModel(
        'Noah',
        'Noah es un personaje central en la serie "Dark". Es un enigmático sacerdote y líder de Sic Mundus, una sociedad secreta que se dedica a viajar en el tiempo. A lo largo de la serie, se revela que Noah está involucrado en una compleja red de manipulaciones temporales y tiene sus propios motivos ocultos. Su presencia misteriosa y su participación en eventos cruciales hacen que Noah sea un personaje intrigante y fundamental para el desarrollo de la trama en "Dark".',
        'lib/assets/Noah.jpg'),
    ItemModel(
        'Claudia',
        'Claudia es un personaje importante en la serie "Dark". Ella es una astuta científica y ejecutiva de alto rango en la central nuclear de Winden. A medida que la trama se desarrolla, se revela que Claudia tiene un profundo conocimiento sobre los viajes en el tiempo y los secretos ocultos de Winden. A lo largo de la serie, Claudia se convierte en una figura clave en la lucha por controlar los eventos temporales y descubrir la verdad detrás de los misterios que rodean a la ciudad. Su determinación, inteligencia y capacidad para moverse entre diferentes épocas la convierten en un personaje fascinante y crucial en "Dark".',
        'lib/assets/Claudia.jpg')
  ];

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
                    style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'GillSans',),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'B U T  W H E N',
                    style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'GillSans',),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/detail', arguments: item);
            },
            child: Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: Colors.grey[200],
              child: Column(
                children: [
                  Container(
                    height: 150,
                    width: double.infinity,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        item.icon,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      item.title,
                      style: const TextStyle(
                        fontSize: 18,
                        fontFamily: 'GillSans',
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ItemModel item = ModalRoute.of(context)?.settings.arguments as ItemModel;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'DETALLES',
          style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'GillSans',),
        ),
      ),
      backgroundColor: const Color(0xFF0C0A08), // Set the desired background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                item.icon,
                fit: BoxFit.fitHeight,
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                item.title,
                style: const TextStyle(
                  fontSize: 24,
                  fontFamily: 'GillSans',
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              child: Text(
                item.subtitle,
                style: const TextStyle(
                  fontSize: 18,
                  fontFamily: 'GillSans',
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class ItemModel {
  final String title;
  final String subtitle;
  final String icon;

  ItemModel(this.title, this.subtitle, this.icon);
}
