part of 'user_bloc.dart';

sealed class UserEvent extends Equatable {
  const UserEvent();

  @override
  List<Object> get props => [];
}

class LoadUser extends UserEvent {}


// Pruebas de Estado
class InitialUserEv extends UserEvent {}
class LoadinUserEv extends UserEvent {}
class FailedUserEv extends UserEvent {}
class SuccessUserEv extends UserEvent {}