import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Flutter layout demo';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              ImageSection(
                image: 'images/montanita.jpg',
              ),
              TitleSection(
                name: 'Montañita',
                location: 'Santa Elena',
              ),
              ButtonSection(),
              TextSection(
                description:
                    'Montañita es una zona no delimitada de comuna de pescadores de la Parroquia Manglaralto, en las costas ecuatorianas y en el cantón Santa Elena de la Provincia de Santa Elena en el Ecuador y por donde pasa la carretera de la Ruta del Sol o "Ruta del Spondylus". Se encuentra a solamente 200 km de la ciudad de Guayaquil, frente a la costa del Océano Pacífico, en la costa occidental de América del Sur.',
              ),
              ImageSection(
                image: 'images/teleferico.jpeg',
              ),
              TitleSection(
                name: 'Teleférico',
                location: 'Quito',
              ),
              ButtonSection(),
              TextSection(
                description:
                    'El TelefériQo es una telecabina que opera en Quito, Ecuador, ubicado en las estribaciones del volcán Rucu Pichincha. Asciende desde la plataforma Motriz (o Estación de Salida) a 3117 m s. n. m., hasta Cruz Loma (Estación de Llegada) a 3947 m s. n. m.,1​ lo cual lo convierte en uno de los telecabinas más altos del mundo. Es el octavo remonte mecánico más alto del mundo y el segundo telecabina más alto de todo el continente americano. El viaje en telecabina dura alrededor de 18 minutos en los que se recorre 2,5 kilómetros y se puede observar la diferencia de vegetación por la altura, hasta llegar al ecosistema de páramo andino.',
              ),
              ImageSection(
                image: 'images/malecon.jpg',
              ),
              TitleSection(
                name: 'Malecón 2000',
                location: 'Guayaquil',
              ),
              ButtonSection(),
              TextSection(
                description:
                    'Malecón 2000, ubicado en la ciudad de Guayaquil, junto al río Guayas, es un proyecto de regeneración urbana del antiguo Malecón Simón Bolívar, de 2.5 km de extensión en donde se puede disfrutar de los grandes monumentos de la historia de Guayaquil, como el Hemiciclo de la Rotonda, Palacio de Cristal, MAAC, jardines, fuentes, centro comercial, restaurantes, bares, patios de comida, el primer cine IMAX de Sudamérica, así como muelles, desde donde se puede abordar embarcaciones para realizar paseos diurnos y nocturnos por el río Guayas y miradores entre otras atracciones.',
              ),
              ImageSection(
                image: 'images/chimborazo.jpg',
              ),
              TitleSection(
                name: 'Volcán Chimborazo',
                location: 'Chimborazo',
              ),
              ButtonSection(),
              TextSection(
                description:
                    'El Chimborazo es un estratovolcán potencialmente activo, situado en el centro de Ecuador, en la Provincia de Chimborazo. Perteneciente a la cordillera de los Andes, específicamente a los Andes septentrionales, cuenta con una altitud de 6263,47 m s. n. m.;1​Nota 1​ por lo que es la montaña más alta del Ecuador y de los Andes septentrionales.',
              ),
              ImageSection(
                image: 'images/mindo.jpg',
              ),
              TitleSection(
                name: 'Mindo',
                location: 'San Miguel de los Bancos',
              ),
              ButtonSection(),
              TextSection(
                description:
                    'Mindo fue considerado uno de los tambos más importantes del trayecto Esmeraldas-Quito, en esta zona Chasquis y Mindalaes descansaban e intercambiaban productos y mercancías. Existen varias versiones del significado del vocablo Mindo (mindu), una de ellas proviene de la palabra Mindalaes que significa mercaderes, otra versión describe que este vocablo se deriva de una palabra quichua cuyo significado es tierra de guayabas debido a la abundancia de este producto.',
              ),
              TitleSection(
                name: 'Elian Moreira',
                location: 'Estudiante de Desarrollo de Software',
              ),
              ButtonSection(),
              TextSection(
                description:
                    'Mi nombre es Elian Moreira soy un Estudiante de la Escuela Politécnica Nacional actualmente cursando el último semestre de la carrera. Tengo conocimientos en: React, SQL, JavaScript, Ionic. Mis pasatiempos son jugar videojuegos, leer y hacer deporte',
              ),
              TitleSection(
                name: 'Erick Santillan',
                location: 'Estudiante de Desarrollo de Software',
              ),
              ButtonSection(),
              TextSection(
                description:
                    'Mi nombre es Erick Santillan, tengo 22 años, mido 1.72, mi cabello es negro al igual que mis ojos y me gusta el baloncesto',
              ),
              TitleSection(
                name: 'Pablo Uchuari',
                location: 'Estudiante de Desarrollo de Software',
              ),
              ButtonSection(),
              TextSection(
                description:
                    'Soy Pablo Uchuari, estudiante de desarrollo de software en la EPN. Apasionado por la creatividad en la programación, invento desafíos y busco constantemente ampliar mis habilidades. Colaborador proactivo y comunicador efectivo, disfruto explorar nuevas tecnologías y compartir entusiasmo en la comunidad estudiantil.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
    required this.name,
    required this.location,
  });

  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  location,
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          const FavoriteWidget(),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonWithText(
            color: color,
            icon: Icons.call,
            label: 'CALL',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.near_me,
            label: 'ROUTE',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.share,
            label: 'SHARE',
          ),
        ],
      ),
    );
  }
}

class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
  });

  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

class TextSection extends StatelessWidget {
  const TextSection({
    super.key,
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(
        description,
        softWrap: true,
      ),
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: 600,
      height: 240,
      fit: BoxFit.cover,
    );
  }
}

// #docregion FavoriteWidget
class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({super.key});

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}
// #enddocregion FavoriteWidget

// #docregion _FavoriteWidgetState, _FavoriteWidgetState-fields, _FavoriteWidgetState-build
class _FavoriteWidgetState extends State<FavoriteWidget> {
  // #enddocregion _FavoriteWidgetState-build
  bool _isFavorited = true;
  int _favoriteCount = 1;

  // #enddocregion _FavoriteWidgetState-fields

  // #docregion _toggleFavorite
  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoriteCount -= 1;
        _isFavorited = false;
      } else {
        _favoriteCount += 1;
        _isFavorited = true;
      }
    });
  }

  // #enddocregion _toggleFavorite

  // #docregion _FavoriteWidgetState-build
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            padding: const EdgeInsets.all(0),
            alignment: Alignment.centerRight,
            icon: (_isFavorited
                ? const Icon(Icons.star)
                : const Icon(Icons.star_border)),
            color: Colors.red[500],
            onPressed: _toggleFavorite,
          ),
        ),
        SizedBox(
          width: 18,
          child: SizedBox(
            child: Text('$_favoriteCount'),
          ),
        ),
      ],
    );
  }
// #docregion _FavoriteWidgetState-fields
}
