import 'package:flutter/material.dart';
class inicio extends StatefulWidget {
  const inicio({super.key});
  @override
  State<inicio> createState() => inicioState();
}
class inicioState extends State<inicio> {
  double n1 = 0.0;
  double n2 = 0.0;
  String op = '';
  String resposta= '';
  double resp = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('super calculadora'),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                onChanged: (value){
                  n1 = double.parse(value);
                },
                decoration: InputDecoration(
              //cria tipo um placehouter no input
              labelText: 'numero',
              //cria o formato de input
              border: OutlineInputBorder(),
            ),
              ),
              SizedBox(height: 10),
              TextField(
                onChanged: (Text){
                  op = Text;
                },
                decoration: InputDecoration(
              //cria tipo um placehouter no input
              labelText: 'sinal da operação',
              //cria o formato de input
              border: OutlineInputBorder(),
            ),
              ),
              SizedBox(height: 10),
                TextField(
                onChanged: (value){
                  n2 = double.parse(value);
                },
                decoration: InputDecoration(
              //cria tipo um placehouter no input
              labelText: 'numero',
              //cria o formato de input
              border: OutlineInputBorder(),
            ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
          onPressed: () {
            setState(() {
               if (op == '+') {
               resp = n1+n2;
              resposta = resp.toString();
             } else if (op == '-') {
               resp = n1-n2;
              resposta = resp.toString();
             } else if (op == '*' || op == 'x') {
               resp = n1*n2;
              resposta = resp.toString();
             } else if (op == '/') {
               resp = n1/n2;
              resposta = resp.toString();
             } else if (op == '%') {
               resp = n1%n2;
              resposta = resp.toString();
             } else {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text('Erro'),
                    content: Text('algo esta errado. Conserte!'),
                    actions: [
                      TextButton(
                        child: Text('OK'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );              
             }
            });
          },
          child: Text('calcular'),
         ),
         Text('$resposta'),
            ],
          ),
        ),
      ),
    );
  }
}