import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_app/Core/ApiServices.dart';
import 'package:furniture_app/Core/BuildAppBar.dart';
import 'package:furniture_app/Features/Data/Repos/CardRepoImplement.dart';
import 'package:furniture_app/Features/Representation/Manager/CategoreyCubit/categorey_cubit.dart';
import 'package:furniture_app/Features/Representation/Views/HomeViewBody.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        LeadingIcon: Icons.menu,
        ActionIcon: Icons.qr_code_scanner_rounded,
      ),
      body: BlocProvider(
        create: (context) => CategoreyCubit(
          CardRepoImplement(
            apiServices: ApiServices(
              Dio(),
            ),
          ),
        )..getCategories(),
        child: const HomeViewBody(),
      ),
    );
  }
}
