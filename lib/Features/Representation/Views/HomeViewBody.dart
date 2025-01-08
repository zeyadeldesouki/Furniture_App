import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_app/Features/Representation/Manager/CategoreyCubit/categorey_cubit.dart';
import 'package:furniture_app/Features/Representation/Manager/ProductCubit/product_cubit.dart';
import 'package:furniture_app/Features/Representation/Views/widgets/CardItemListView.dart';
import 'package:furniture_app/Features/Representation/Views/widgets/ProdctItemGridView.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Browse By Categories",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 16.0,
                  ),
                  child: BlocBuilder<CategoreyCubit, CategoreyState>(
                    builder: (context, state) {
                      if (state is CategoreySucess) {
                        return CardItemListView(
                          categories: state.categories,
                        );
                      } else if (state is CategoreyFailure) {
                        return Text(state.err);
                      } else {
                        return const Center(child: CircularProgressIndicator());
                      }
                    },
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Divider(
                  thickness: 1,
                ),
              ],
            ),
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Recommanded For You ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                BlocBuilder<ProductCubit, ProductState>(
                  builder: (context, state) {
                    if (state is Productsucess) {
                      return ProdctItemGridView(
                        products: state.products,
                      );
                    } else if (state is Productfailure) {
                      return Text(state.err);
                    } else {
                      return const Center(child: CircularProgressIndicator());
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
