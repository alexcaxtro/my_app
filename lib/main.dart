import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // Este widget es la raíz de su aplicación.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: const MyHomePage(title: 'Flutter Git'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // Esta llamada a setState le dice al marco Flutter que algo tiene
      // cambió en este estado, lo que hace que se vuelva a ejecutar el método de compilación a continuación
      // para que la pantalla pueda reflejar los valores actualizados. si cambiamos
      // _counter sin llamar a setState(), entonces el método de compilación no sería
      // llamé de nuevo, por lo que no parece que suceda nada.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Este método se vuelve a ejecutar cada vez que se llama a setState, por ejemplo, como hecho
    // por el método _incrementCounter anterior.
    //
    // El marco de trabajo de Flutter se ha optimizado para volver a ejecutar métodos de compilación
    // rápido, para que pueda reconstruir cualquier cosa que necesite actualizarse en lugar de
    // que tener que cambiar individualmente las instancias de los widgets.
    return Scaffold(
      appBar: AppBar(
        // Aquí tomamos el valor del objeto MyHomePage que fue creado por
        // el método App.build y lo usamos para configurar el título de nuestra barra de aplicaciones.
        title: Text(widget.title),
      ),
      body: Center(
        // Center es un widget de diseño. Toma un solo hijo y lo posiciona
        // en medio del padre.
        child: Column(
          // La columna también es un widget de diseño. Se necesita una lista de hijos y
          // los organiza verticalmente. Por defecto, se ajusta a sí mismo para adaptarse a su
          // hijos horizontalmente, y trata de ser tan alto como su padre.
          //
          // Invocar "pintura de depuración" (presione "p" en la consola, elija el
          // Acción "Toggle Debug Paint" del Flutter Inspector en Android
          // Studio, o el comando "Toggle Debug Paint" en Visual Studio Code)
          // para ver la estructura alámbrica de cada widget.
          //
          // La columna tiene varias propiedades para controlar cómo se dimensiona a sí misma y
          // cómo posiciona a sus hijos. Aquí usamos mainAxisAlignment para
          // centrar a los niños verticalmente; el eje principal aquí es la vertical
          // eje porque las columnas son verticales (el eje transversal sería
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // Esta coma final hace que el formato automático sea más agradable para los métodos de compilación
    );
  }
}
