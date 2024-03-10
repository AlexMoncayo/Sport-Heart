import 'package:flutter/material.dart';

void main() => runApp( const MiApp());

class MiApp extends StatelessWidget {
  const MiApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title:"Mi App",
      home:Inicio(),
    );
  }

}
class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _nameState();
}

// ignore: camel_case_types
class _nameState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:const Text("Sport Heart"),
      ),
      body:cuerpo(),
    );
  }
}

Widget cuerpo (){
   return Container(
    decoration: const BoxDecoration( 
    image: DecorationImage(image:AssetImage('assets/inicio1.jpg'),
    fit: BoxFit.cover
    ),
    ),
child: Center(child: login()),
   );
}

Widget login() {
  return Align(
    alignment: Alignment.bottomCenter,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 10.0), // Ajusta el margen inferior según sea necesario
          padding: const EdgeInsets.symmetric(horizontal: 60.0, vertical: 5.0),
          decoration: BoxDecoration(
            color: Colors.orange.withOpacity(0.8),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: const Text(
            "Login",
            style: TextStyle(color: Colors.white70, fontSize: 25.0),
        ),
        ),
        const SizedBox(height: 5.0), // Ajusta la altura del SizedBox según sea necesario
        Container(
          margin: const EdgeInsets.only(bottom: 100.0), // Ajusta el margen inferior según sea necesario
          child: const Text(
            "¿No tienes una cuenta? Inscribirse",
            style: TextStyle(color: Colors.orange, fontSize: 18.0),
          ),
        ),
        // Puedes agregar más Text widgets según sea necesario.
      ],
    ),
  );
}
