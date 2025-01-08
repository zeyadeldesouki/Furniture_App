import 'package:dartz/dartz.dart';
import 'package:furniture_app/Core/Failure.dart';
import 'package:furniture_app/Features/Data/Models/categoery_model/categoery_model.dart';
import 'package:furniture_app/Features/Data/Models/product_model/product_model.dart';

abstract class CardRepo{
 Future<Either<Failure, List<CategoeryModel>>> GetCategorey();
  Future<Either<Failure, List<ProductModel>>> GetProduct();
}