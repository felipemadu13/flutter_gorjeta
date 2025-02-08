import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  num gorjeta = 0;
  String gorjetaDecimal = '0.00';

  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Center(
          child: Text(widget.title),
        ), 
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly
              ],
              onChanged: (value) {
                setState(() {
                  gorjeta = (num.tryParse(value) ?? 0) * 0.10;
                  gorjetaDecimal = gorjeta.toStringAsFixed(2);
                });
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Digite o valor da conta"
                ),
            ),
            Text(
              "R\$ $gorjetaDecimal",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
        )
      )
    );
  }
}
