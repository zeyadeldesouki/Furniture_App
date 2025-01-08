import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:furniture_app/Core/ApiServices.dart';
import 'package:furniture_app/Core/Failure.dart';
import 'package:furniture_app/Features/Data/Models/categoery_model/categoery_model.dart';
import 'package:furniture_app/Features/Data/Models/product_model/product_model.dart';
import 'package:furniture_app/Features/Data/Repos/Cardrepo.dart';

class CardRepoImplement extends CardRepo {
  final ApiServices apiServices;

  CardRepoImplement({required this.apiServices});
  @override
  Future<Either<Failure, List<CategoeryModel>>> GetCategorey() async {
    try {
      var data = await apiServices.get(endpoind: "categories");
      var categories = data.map((e) => CategoeryModel.fromJson(e)).toList();
      // List<CategoryModel> categories = [];
      // for (var item in data) {
      //   categories.add(CategoryModel.fromJson(item));
      // }
      return Right(categories);
    } catch (e) {
      if (e is DioException) {
        return left(
          Serverfailure.fromDioException(e),
        );
      } else {
        return left(
          Serverfailure(
            err: e.toString(),
          ),
        );
      }
    }
  }

  @override
  Future<Either<Failure, List<ProductModel>>> GetProduct() async {
    try {
      var data = await apiServices.get(endpoind: "products");
      List<ProductModel> products = [];
      for (var element in data) {
        products.add(ProductModel.fromJson(element));
      }
      return Right(products);
    } catch (e) {
      if (e is DioException) {
        return left(
          Serverfailure.fromDioException(e),
        );
      } else {
        return left(
          Serverfailure(
            err: e.toString(),
          ),
        );
      }
    }
  }
}
