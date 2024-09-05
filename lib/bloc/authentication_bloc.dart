import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:bill_management_app_v1/models/user_model.dart';

// Events
abstract class AuthenticationEvent extends Equatable {}

class AuthenticationLoggedIn extends AuthenticationEvent {
  final User user;

  AuthenticationLoggedIn(this.user);

  @override
  List<Object?> get props => [user];
}

// States
abstract class AuthenticationState extends Equatable {}

class AuthenticationInitial extends AuthenticationState {
  @override
  List<Object?> get props => [];
}

class AuthenticationAuthenticated extends AuthenticationState {
  final User user;

  AuthenticationAuthenticated(this.user);

  @override
  List<Object?> get props => [user];
}

class AuthenticationUnauthenticated extends AuthenticationState {
  @override
  List<Object?> get props => [];
}

// BLoC
class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(AuthenticationInitial());

  @override
  Stream<AuthenticationState> mapEventToState(
      AuthenticationEvent event) async* {
    if (event is AuthenticationLoggedIn) {
      yield AuthenticationAuthenticated(event.user);
    }
  }
}
