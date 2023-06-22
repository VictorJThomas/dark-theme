import 'package:flutter/material.dart';
import 'package:flutter_application_1/contratame.dart';
import 'package:flutter_application_1/personajes_view.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'acerca_de_view.dart';
import 'en_mi_vida_view.dart';
import 'main.dart';

void main() {
  runApp(const MomentosViewApp());
}

class MomentosViewApp extends StatelessWidget {
  const MomentosViewApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cuadrícula',
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
        'Noah habla consigo mismo',
        'Noah habla con una version joven suya para convencerlo de seguir el plan de Adam.',
        'VOimOag-gKM&ab',
        'lib/assets/Noah_talks.jpg'),
    ItemModel(
        'Jonas es colgado en 2053',
        'Jonas se encuentra en el futuro y es colgado a morir por un grupo de sobrevivientes de la epoca.',
        'V1NY9ZoKhRk&ab',
        'lib/assets/Jonas_hanged.jpg'),
    ItemModel(
        'Adam & Dios',
        'Adam explica que es Sic Mundus Creatus Est y habla sobre Dios',
        '8Uz8nQKl2P0&ab',
        'lib/assets/Adam.jpg'),
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
                    'S I C   M U N D U S',
                    style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'GillSans',),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'C R E A T U S  E S T',
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
          crossAxisCount: 1,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/detail', arguments: item);
            },
            child: GridTile(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      item.icon,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    item.title,
                    style: const TextStyle(
                        fontSize: 20,
                        fontFamily: 'GillSans',
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
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
    final ItemModel item =
        ModalRoute.of(context)?.settings.arguments as ItemModel;

    return Scaffold(
      appBar: AppBar(
        title: Text('DETALLES', style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      backgroundColor: Color.fromRGBO(13, 0, 24, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 16),
            Text(item.title,
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            YoutubePlayer(
              controller: YoutubePlayerController(
                initialVideoId: 'VOimOag-gKM&ab',
                flags: YoutubePlayerFlags(
                  autoPlay: true,
                  mute: true,
                ),
              ),
              showVideoProgressIndicator: true,
              progressIndicatorColor: Colors.amber,
              progressColors: ProgressBarColors(
                playedColor: Colors.amber,
                handleColor: Colors.amberAccent,
              ),
              onReady: () {
                // TODO: Implement any custom logic here
              },
            ),
            SizedBox(height: 10),
            Text(item.subtitle,
                style: TextStyle(fontSize: 18, color: Colors.white)),
          ],
        ),
      ),
    );
  }
}

class ItemModel {
  final String title;
  final String subtitle;
  final String videoUrl;
  final String icon;

  ItemModel(this.title, this.subtitle, this.videoUrl, this.icon);
}
