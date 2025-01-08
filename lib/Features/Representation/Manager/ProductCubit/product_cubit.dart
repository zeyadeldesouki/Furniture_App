import 'package:bloc/bloc.dart';
import 'package:furniture_app/Features/Data/Models/product_model/product_model.dart';
import 'package:furniture_app/Features/Data/Repos/Cardrepo.dart';
import 'package:meta/meta.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit(this.cardRepo) : super(ProductInitial());
  final CardRepo cardRepo;
  Future<void> GetProduct() async {
    emit(ProductLoaded());
    var data = await cardRepo.GetProduct();
    data.fold((failure) {
      emit(Productfailure(err: failure.err));
    }, (products) {
      emit(Productsucess(products: products));
    });
  }
}
