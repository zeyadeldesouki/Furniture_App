import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_app/Core/ApiServices.dart';
import 'package:furniture_app/Features/Data/Repos/CardRepoImplement.dart';
import 'package:furniture_app/Features/Representation/Manager/ProductCubit/product_cubit.dart';
import 'package:furniture_app/Features/Representation/Views/HomeView.dart';
import 'package:furniture_app/Features/Representation/Views/widgets/ItemDetails.dart';

void main() {
  runApp(const FurnitureApp());
}

class FurnitureApp extends StatelessWidget {
  const FurnitureApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductCubit(
        CardRepoImplement(
          apiServices: ApiServices(
            Dio(),
          ),
        ),
      )..GetProduct(),
      child: MaterialApp(
        theme: ThemeData(
            // textTheme: GoogleFonts.poppinsTextTheme(),
            ),
        routes: {ItemDetails.kdetails: (context) => const ItemDetails()},
        debugShowCheckedModeBanner: false,
        home: const HomeView(),
      ),
    );
  }
}
