import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:indriver_clone_flutter/src/presentation/pages/auth/login/bloc/login_event.dart';
import 'package:indriver_clone_flutter/src/presentation/pages/auth/login/bloc/login_state.dart';
import 'package:indriver_clone_flutter/src/presentation/utils/BlocFormItem.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final formkey = GlobalKey<FormState>();
  LoginBloc() : super(LoginState()) {
    on<LoginIntEvent>((event, emit) {
      emit(state.copyWith(formKey: formkey));
    });

    on<EmailChanged>((event, emit) {
      // event.email Lo que el usaurio esta escribiendo
      emit(
        state.copyWith(
          email: Blocformitem(
            value: event.email.value,
            error: event.email.value.isEmpty ? "Ingresa el email:" : null,
          ),
          formKey: formkey,
        ),
      );
    });

    on<PasswordChanged>((event, emit) {
      emit(
        state.copyWith(
          password: Blocformitem(
            value: event.password.value,
            error: event.password.value.isEmpty
                ? "Ingresa el password"
                : event.password.value.length < 6
                ? "Mínimo 6 caracteres"
                : null,
          ),
          formKey: formkey,
        ),
      );
    });

    on<FormSubmitted>((event, emit) {
      print('Email: ${state.email}');
      print('Password: ${state.password}');
    });
  }
}
