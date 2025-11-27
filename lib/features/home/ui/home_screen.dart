import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../logic/home_cubit.dart';
import '../logic/home_state.dart';
import 'widgets/home_banner_widget.dart';
import 'widgets/search_bar_widget.dart';
import 'widgets/location_bar_widget.dart';
import 'widgets/categories_grid_widget.dart';

import 'category_screen.dart';
// search screen is resolved via GoRouter (AppPath.search) so import here isn't required
// import '../../search/ui/search_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:tryiak/core/router/go_router.dart' as app_paths;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocProvider(
      create: (context) => HomeCubit()..initialize(),
      child: Scaffold(
        body: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) => state.when(
            initial: () => const Center(
              child: CircularProgressIndicator(),
            ),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            error: (message) => Center(
              child: Text(message),
            ),
            loaded: (banners, categories, medicines) => SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color(0xFF75DDFA),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                      ),
                    ),
                    padding: const EdgeInsets.only(
                      top: 16,
                      left: 12,
                      right: 12,
                      bottom: 8,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 8),
                        const Text(
                          'Welcome to Tiryak.',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 8),
                        SearchBarWidget(
                          searchController: _searchController,
                          onSearch: (query) {
                            context.read<HomeCubit>().searchMedicines(query);
                          },
                          onTap: () {
                            context.go(
                                '${app_paths.AppPath.search}?autofocus=true');
                          },
                          inHeader: true,
                        ),
                        const SizedBox(height: 8),
                        const LocationBarWidget(),
                        const SizedBox(height: 12),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: HomeBannerWidget(banners: banners),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'Categories',
                      style: theme.textTheme.titleMedium?.copyWith(
                        color: theme.colorScheme.primary,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  CategoriesGridWidget(
                    categories: categories,
                    onCategoryTap: (category) {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => CategoryScreen(categoryName: category),
                      ));
                    },
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
