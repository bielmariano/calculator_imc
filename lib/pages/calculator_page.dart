import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({Key? key}) : super(key: key);

  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  TextEditingController heightContoller = TextEditingController();
  TextEditingController weightController = TextEditingController();

  String textInfo = 'Informe seus dados';

  void _resetFields() {
    heightContoller.clear();
    weightController.text = '';
    textInfo = 'Informa seus dados';
  }

  void _calculaImc() {
    double height = double.parse(heightContoller.text) / 100;
    double weight = double.parse(weightController.text);

    double imc = weight / (height * height);

    if (imc < 18.6) {
      textInfo = 'Você está abaixo do peso ${imc.toStringAsPrecision(2)}';
    } else if (imc > 18.6 && imc < 24.9) {
      textInfo = 'Você está com o peso ideal ${imc.toStringAsPrecision(2)}';
    } else if (imc > 24.9 && imc < 29.9) {
      textInfo =
          'Você está levemente acima do peso ${imc.toStringAsPrecision(2)}';
    } else if (imc > 29.9 && imc < 34.9) {
      textInfo = 'Você está com obesidade grau I ${imc.toStringAsPrecision(2)}';
    } else if (imc > 34.9 && imc < 39.9) {
      textInfo =
          'Você está com obesidade grau II ${imc.toStringAsPrecision(2)}';
    } else {
      textInfo =
          'Você está com obesidade grau II ${imc.toStringAsPrecision(2)}';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        leading: Container(
          child: Image.asset('assets/images/logo_home.png'),
        ),
        title: Container(
child: Text('Calculadora IMC')),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 20),
            child: GestureDetector(
                onTap: () {
                  _resetFields();
                  setState(() {});
                },
                child: Icon(Icons.restart_alt)),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.only(top: 36),
                child: Image.asset('assets/images/user.png')),
            SizedBox(
              height: 57,
            ),
            Container(
              width: 300,
              height: 50,
              child: TextField(
                controller: weightController,
                decoration: InputDecoration(hintText: 'Peso (kg)'),
              ),
            ),
            Container(
              width: 300,
              height: 50,
              child: TextField(
                controller: heightContoller,
                decoration: InputDecoration(hintText: 'Altura (cm)'),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 33.5),
              width: 300,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    _calculaImc();
                  });
                },
                child: Text('Calcular'),
                style: ElevatedButton.styleFrom(
                  primary: Theme.of(context).primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
            ),
            Text(textInfo),
          ],
        ),
      ),
    );
  }
}
