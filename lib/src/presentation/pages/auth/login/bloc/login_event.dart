abstract class LoginEvent {}

class LoginIntEvent extends LoginEvent {}

//class LoginLoadingEvent extends LoginEvent{}

class EmailChanged extends LoginEvent {
  final String email;

  EmailChanged({required this.email});
}

class PasswordChanged extends LoginEvent {
  final String password;

  PasswordChanged({required this.password});
}

class FormSubmitted extends LoginEvent {
  FormSubmitted();
}
