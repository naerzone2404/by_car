import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:indriver_clone_flutter/src/presentation/pages/auth/login/bloc/login_event.dart';
import 'package:indriver_clone_flutter/src/presentation/pages/auth/login/bloc/login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final formkey = GlobalKey<FormState>();
  LoginBloc() : super(LoginState()) {
    on<LoginIntEvent>((event, emit) {
      emit(state.copyWith(formKey: formkey));
    });

    on<EmailChanged>((event, emit) {
      emit(state.copyWith(email: event.email, formKey: formkey));
    });

    on<PasswordChanged>((event, emit) {
      emit(state.copyWith(password: event.password, formKey: formkey));
    });

    on<FormSubmitted>((event, emit) {
      print('Email: ${state.email}');
      print('Password: ${state.password}');
    });
  }
}
