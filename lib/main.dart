import 'package:flutter/material.dart';

void main() {
  runApp(MecanicaAutomotrizMezaApp());
} //Funcion Principal

class MecanicaAutomotrizMezaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MecanicaAutomotrizMeza',
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        home: PaguinaInicial());
  } //Widget
} //Clase MecanicaAutomotrizMezaApp witget Sin Estado

class PaguinaInicial extends StatefulWidget {
  PaguinaInicial({Key? key}) : super(key: key);
  @override
  _PaguinaInicialState createState() => _PaguinaInicialState();
} //Widget Con Estado

class _PaguinaInicialState extends State<PaguinaInicial> {
  List<String> images = [
    "assets/images/33.jpg",
    "assets/images/kk.jpg",
    "assets/images/mm.jpg",
    "assets/images/pp.jpg",
    "assets/images/ll.jpg",
    "assets/images/11.jpg",
    "assets/images/op.jpg",
    "assets/images/tt.jpg",
    "assets/images/tt.jpg",
    "assets/images/tt.jpg",
    "assets/images/tt.jpg",
    "assets/images/tt.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Galeria MecanicaAutomotriz"),
          centerTitle: true,
        ),
        body: GridView.custom(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          childrenDelegate: SliverChildBuilderDelegate(
            (BuildContext, index) {
              return Image.asset(
                images[index],
                fit: BoxFit.cover,
              );
            },
            childCount: 12,
          ),
          padding: EdgeInsets.all(10),
          shrinkWrap: true,
        ));
  }
}
