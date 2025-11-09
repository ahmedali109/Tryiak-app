import 'package:flutter_bloc/flutter_bloc.dart';
import '../data/model/medicine_model.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState.initial());

  List<Map<String, dynamic>> _allMedicines = [];
  String _currentCategory = '';
  String _searchQuery = '';

  void initialize() {
    emit(const HomeState.loading());

    try {
      // TODO: Replace with actual API calls later
      final medicines = [
        MedicineModel(
            name: "Panadol", imagePath: "assets/med1.png", price: 5.5),
        MedicineModel(name: "Brufen", imagePath: "assets/med1.png", price: 6.0),
        MedicineModel(
            name: "Voltaren", imagePath: "assets/med1.png", price: 7.2),
        MedicineModel(name: "Adol", imagePath: "assets/med1.png", price: 4.9),
        MedicineModel(
            name: "Cataflam", imagePath: "assets/med1.png", price: 6.5),
        MedicineModel(
            name: "Augmentin", imagePath: "assets/med1.png", price: 8.0),
      ];

      final banners = [
        "assets/delivery.png",
        "assets/delivery.png",
        "assets/delivery.png",
      ];

      final categories = [
        {"title": "Beauty", "image": "assets/med1.png"},
        {"title": "Homecare", "image": "assets/med1.png"},
        {"title": "Fashion", "image": "assets/med1.png"},
        {"title": "Kitchen", "image": "assets/med1.png"},
      ];

      _allMedicines = medicines
          .map((m) => {
                'name': m.name,
                'image': m.imagePath,
                'price': m.price,
                'description': 'Sample description',
                'category': 'General',
              })
          .toList();

      emit(HomeState.loaded(
        banners: banners,
        categories: categories,
        medicines: _allMedicines,
      ));
    } catch (e) {
      emit(HomeState.error(e.toString()));
    }
  }

  void searchMedicines(String query) {
    _searchQuery = query.toLowerCase();
    _filterMedicines();
  }

  void filterByCategory(String category) {
    _currentCategory = category;
    _filterMedicines();
  }

  void _filterMedicines() {
    state.maybeWhen(
      loaded: (banners, categories, medicines) {
        var filteredMedicines = List<Map<String, dynamic>>.from(_allMedicines);

        // Apply category filter
        if (_currentCategory.isNotEmpty) {
          filteredMedicines = filteredMedicines
              .where((m) =>
                  m['category'].toLowerCase() == _currentCategory.toLowerCase())
              .toList();
        }

        // Apply search filter
        if (_searchQuery.isNotEmpty) {
          filteredMedicines = filteredMedicines
              .where((m) =>
                  m['name'].toLowerCase().contains(_searchQuery) ||
                  m['description'].toLowerCase().contains(_searchQuery))
              .toList();
        }

        emit(HomeState.loaded(
          banners: banners,
          categories: categories,
          medicines: filteredMedicines,
        ));
      },
      orElse: () {},
    );
  }
}
