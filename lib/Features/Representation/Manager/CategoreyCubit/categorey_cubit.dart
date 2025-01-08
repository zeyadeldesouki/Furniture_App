import 'package:bloc/bloc.dart';
import 'package:furniture_app/Features/Data/Models/categoery_model/categoery_model.dart';
import 'package:furniture_app/Features/Data/Repos/Cardrepo.dart';
import 'package:meta/meta.dart';

part 'categorey_state.dart';

class CategoreyCubit extends Cubit<CategoreyState> {
  CategoreyCubit(this.cardRepo) : super(CategoreyInitial());
  final CardRepo cardRepo;
  Future<void> getCategories() async {
    emit(CategoreyLoaded());
    var data = await cardRepo.GetCategorey();
    data.fold((failure) {
      emit(
        CategoreyFailure(err: failure.err),
      );
    }, (categories) {
      emit(
        CategoreySucess(categories: categories),
      );
    });
  }
}
