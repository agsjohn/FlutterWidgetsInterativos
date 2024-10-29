import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 68, 183, 58)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Widgets Interativos'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int groupRadio = 0;
  bool ativo = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(10),
              child: 
                const TextField(
                decoration: InputDecoration(label: Text("Nome")),
              )
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: 
              const TextField(
                decoration: InputDecoration(label: Text("Email")),
              )
            ),
            Container(
              margin: const EdgeInsets.all(10),
              alignment: Alignment.centerLeft,
              child: const Text("Sexo", style: TextStyle(fontSize: 16),),
            ),
            RadioListTile(title: const Text("Feminino"),value: 1,
              groupValue: groupRadio, onChanged: (int? value){setState((){
                groupRadio = value!;
            });}),
            RadioListTile(title: const Text("Masculino"),value: 2,
              groupValue: groupRadio, onChanged: (int? value){setState((){
                groupRadio = value!;
            });}),
              RadioListTile(title: const Text("Outro"),value: 3,
              groupValue: groupRadio, onChanged: (int? value){setState((){
                groupRadio = value!;
            });}),
            CheckboxListTile(title: const Text("Aceita os termos de uso?"), value: ativo, onChanged: (value) => {setState(() {
              ativo = value!;
            })},),
            Container(
              margin: const EdgeInsets.all(10),
              child: 
            TextField(keyboardType: TextInputType.number, 
              inputFormatters: [FilteringTextInputFormatter.digitsOnly], 
              decoration: const InputDecoration(label: Text("Idade")))
            ),
            ElevatedButton(onPressed: () {}, child: const Text("Enviar"))
          ], 
        ),
      ),
    );
  }
}
