import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Este widget é a raiz da sua aplicação.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // Este é o tema da sua aplicação.
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(219, 13, 6, 228),
        ),
      ),
      home: const MyHomePage(title: 'Flutter - CezarHora - Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  /// Este widget é a página raiz do seu aplicativo. Ele possui estado, o que significa
  /// que pode manter e atualizar dados ao longo do tempo, permitindo que o widget seja
  /// dinâmico e interativo. Widgets com estado são úteis quando a parte da interface
  /// do usuário que você está descrevendo pode mudar dinamicamente.

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // Este método é chamado quando o usuário pressiona o botão de incrementar.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Este método é chamado sempre que o estado deste widget muda (por exemplo,
    // quando o usuário pressiona o botão de incrementar).
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column também é um widget de layout. Ele recebe uma lista de filhos e
          // os organiza verticalmente. Por padrão, ele se ajusta para caber seus filhos.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Você Pressionou o botão essa quantidade de vezes:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
