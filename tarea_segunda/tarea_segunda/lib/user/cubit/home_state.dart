part of 'home_cubit.dart';

@immutable
sealed class HomeState {}

final class HomeLoading extends HomeState {}
final class HomeSuccess extends HomeState {
  final User user;
  HomeSuccess({required this.user});

  @override
  dynamic get props => [user];
}
final class HomeError extends HomeState {}

