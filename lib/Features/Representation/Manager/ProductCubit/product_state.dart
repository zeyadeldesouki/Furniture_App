part of 'product_cubit.dart';

@immutable
sealed class ProductState {}

final class ProductInitial extends ProductState {}
final class ProductLoaded extends ProductState {}
final class Productsucess extends ProductState {
  final List<ProductModel>products;

  Productsucess({required this.products});
}
final class Productfailure extends ProductState {
  final String err;

  Productfailure({required this.err});
}
