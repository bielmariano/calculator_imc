import 'package:calculadora_imc/pages/login_page/widgets/custom_text_field_widget.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 50)),
              Image.asset('assets/images/logo_ioasys.png'),
              Padding(padding: EdgeInsets.only(top: 129)),
              const Text(
                'Seja bem vindo!',
                style: TextStyle(
                  fontSize: 31,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text(
                'Calculadora IMC',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              Container(
                  margin: EdgeInsets.only(top: 67),
                  child: CustomTextFieldWidget(hintText: 'usuário')),
              SizedBox(
                height: 20,
              ),
              CustomTextFieldWidget(obscureText: true, hintText: 'senha'),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 300,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/calculator');
                  },
                  child: Text('Entrar'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
