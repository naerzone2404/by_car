import 'package:flutter/material.dart';
import 'package:indriver_clone_flutter/src/presentation/pages/auth/login/bloc/login_bloc.dart';
import 'package:indriver_clone_flutter/src/presentation/pages/auth/login/bloc/login_event.dart';
//import 'package:indriver_clone_flutter/src/presentation/pages/auth/login/bloc/login_event.dart';
import 'package:indriver_clone_flutter/src/presentation/widgets/DefaulltTextField.dart';
import 'package:indriver_clone_flutter/src/presentation/widgets/DefaultButton.dart';

class Logincontent extends StatelessWidget {
  LoginBloc? bloc;
  Logincontent(this.bloc, {super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Form(
      key: bloc?.state.formKey,
      child: Stack(
        children: [
          Container(
            width: size.width,
            height: size.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color.fromARGB(255, 12, 38, 145),

                  Color.fromARGB(255, 34, 156, 249),
                ],
              ),
            ),
            padding: EdgeInsets.only(left: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // horizontal
              mainAxisAlignment: MainAxisAlignment.center, // vertical
              children: [
                _textLoginRotate(),
                SizedBox(height: 50),
                _textRegisterRotate(context),
                SizedBox(height: 100),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 60, bottom: 60),
            height: size.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color.fromARGB(255, 14, 29, 166),
                  Colors.blue,
                  Color.fromARGB(255, 30, 112, 227),
                  Colors.blue,
                ],
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                bottomLeft: Radius.circular(25),
              ),
            ),
            child: Container(
              margin: EdgeInsets.only(top: 0, bottom: 0, left: 25, right: 25),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 50),
                    _textWelcome('Welcome'),
                    _textWelcome('back...'),

                    _ImageCard(),
                    _textLogin('Log in'),
                    Defaullttextfield(
                      icon: Icons.email_outlined,
                      text: 'Email',
                      onChanged: (String text) {
                        bloc?.add(EmailChanged(email: text));
                      },
                    ),
                    Defaullttextfield(
                      icon: Icons.lock_outline,
                      text: 'Password',
                      margin: EdgeInsets.only(top: 15, left: 20, right: 20),
                      onChanged: (String text) {
                        bloc?.add(PasswordChanged(password: text));
                      },
                    ),
                    SizedBox(height: size.height * 0.2),
                    Defaultbutton(
                      size: size,
                      text: 'Login',
                      color: Colors.purple,
                      textColor: Colors.white,
                      onPressed: () {
                        bloc?.add(FormSubmitted());
                      },
                    ),
                    _separetorOr(),
                    SizedBox(height: 10),
                    _textDontHaveAccount(context),
                    SizedBox(height: 50),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _textDontHaveAccount(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '¿No tienes cuenta?',

          style: TextStyle(color: Colors.grey[100], fontSize: 17),
        ),
        SizedBox(width: 7),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/register');
          },
          child: Text(
            ' Regístrate',
            style: TextStyle(
              color: Colors.grey[100],
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  Widget _separetorOr() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(right: 5),
          width: 25,
          height: 1,
          color: Colors.white,
        ),
        Text(' O', style: TextStyle(color: Colors.grey[100], fontSize: 17)),
        Container(
          margin: EdgeInsets.only(left: 5),
          width: 25,
          height: 1,
          color: Colors.white,
        ),
      ],
    );
  }

  Widget _textLogin(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 24,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _ImageCard() {
    return Container(
      alignment: Alignment.centerRight,
      child: Image.asset('assets/img/car.png', width: 150, height: 150),
    );
  }

  Widget _textWelcome(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 30,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _textRegisterRotate(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/register');
      },
      child: RotatedBox(
        quarterTurns: 1,
        child: Text(
          'Registro',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    );
  }

  Widget _textLoginRotate() {
    return RotatedBox(
      quarterTurns: 1,
      child: Text(
        'Login',
        style: TextStyle(
          fontSize: 27,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
