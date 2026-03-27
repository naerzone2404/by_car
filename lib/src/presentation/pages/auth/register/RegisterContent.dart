import 'package:flutter/material.dart';
import 'package:indriver_clone_flutter/src/presentation/widgets/DefaulltTextField.dart';
import 'package:indriver_clone_flutter/src/presentation/widgets/DefaultButton.dart';

class Registercontent extends StatelessWidget {
  const Registercontent({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: size.height,
          width: size.width,
          padding: EdgeInsets.only(left: 12),
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // horizontal
            mainAxisAlignment: MainAxisAlignment.center, // vertical
            children: [
              _textLoginRotate(context),
              SizedBox(height: 100),
              _textRegisterRotate(),
              SizedBox(height: size.height * 0.25),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 60),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35),
              bottomLeft: Radius.circular(35),
            ),
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                const Color.fromARGB(255, 255, 255, 255),
                const Color.fromARGB(255, 154, 154, 154),
              ],
            ),
          ),
          child: Column(
            children: [
              _imageBanner(),
              Defaullttextfield(
                icon: Icons.person_outline,
                text: 'Nombre',
                margin: EdgeInsets.only(top: 50, left: 50, right: 50),
              ),
              Defaullttextfield(
                icon: Icons.person_2_outlined,
                text: 'Apellido',
                margin: EdgeInsets.only(top: 15, left: 50, right: 50),
              ),
              Defaullttextfield(
                icon: Icons.email_outlined,
                text: 'Email',
                margin: EdgeInsets.only(top: 15, left: 50, right: 50),
              ),
              Defaullttextfield(
                icon: Icons.phone_outlined,
                text: 'Teléfono',
                margin: EdgeInsets.only(top: 15, left: 50, right: 50),
              ),
              Defaullttextfield(
                icon: Icons.lock_outlined,
                text: 'Password',
                margin: EdgeInsets.only(top: 15, left: 50, right: 50),
              ),
              Defaullttextfield(
                icon: Icons.lock_outlined,
                text: 'Confirmar Password',
                margin: EdgeInsets.only(top: 15, left: 50, right: 50),
              ),
              SizedBox(height: 25),
              Defaultbutton(
                size: size,
                text: 'Crear usuario',
                margin: EdgeInsets.only(top: 30, left: 60, right: 60),
              ),
              SizedBox(height: 5),
              _separatorOr(),
              SizedBox(height: 10),
              _textAlreadyHaveAccount(context),
            ],
          ),
        ),
      ],
    );
  }

  Widget _textAlreadyHaveAccount(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Ya tienes una cuenta?',
          style: TextStyle(color: Colors.grey[100], fontSize: 16),
        ),
        SizedBox(width: 5),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, '/login'),
          child: Text(
            'Inicia sesión',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }

  Widget _separatorOr() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 25,
          height: 1,
          color: Colors.white,
          margin: EdgeInsets.only(right: 5),
        ),
        Text(
          'O',
          style: TextStyle(
            color: Colors.white,
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          width: 25,
          height: 1,
          color: Colors.white,
          margin: EdgeInsets.only(left: 5),
        ),
      ],
    );
  }

  Widget _imageBanner() {
    return Container(
      margin: EdgeInsets.only(top: 60),
      alignment: Alignment.center,
      child: Image.asset('assets/img/delivery.png', width: 100, height: 100),
    );
  }

  Widget _textLoginRotate(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/login'),
      child: RotatedBox(
        quarterTurns: 1,
        child: Text(
          'Login',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _textRegisterRotate() {
    return RotatedBox(
      quarterTurns: 1,
      child: Text(
        'Registro',
        style: TextStyle(
          fontSize: 27,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
