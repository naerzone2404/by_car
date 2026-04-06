import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:indriver_clone_flutter/src/presentation/utils/BlocFormItem.dart';

class LoginState extends Equatable {
  final GlobalKey<FormState>? formKey;
  final Blocformitem email;
  final Blocformitem password;

  const LoginState({
    this.formKey,
    this.email = const Blocformitem(error: 'Ingresa el Email'),
    this.password = const Blocformitem(error: 'Ingresa el password'),
  });

  LoginState copyWith({
    GlobalKey<FormState>? formKey,
    Blocformitem? email,
    Blocformitem? password,
  }) {
    return LoginState(
      email: email ?? this.email,
      password: password ?? this.password,
      formKey: formKey,
    );
  }

  @override
  List<Object?> get props => [email, password];
}
