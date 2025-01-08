part of 'categorey_cubit.dart';

@immutable
sealed class CategoreyState {}

final class CategoreyInitial extends CategoreyState {}
final class CategoreyLoaded extends CategoreyState {}
final class CategoreySucess extends CategoreyState {
  final List<CategoeryModel>categories;

  CategoreySucess({required this.categories});
}

final class CategoreyFailure extends CategoreyState {
  final String err;

  CategoreyFailure({required this.err});
}


