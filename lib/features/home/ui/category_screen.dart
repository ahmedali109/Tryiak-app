import 'package:flutter/material.dart';
import '../data/model/medicine_model.dart';

class CategoryScreen extends StatelessWidget {
  final String categoryName;

  const CategoryScreen({Key? key, required this.categoryName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final medicines = <MedicineModel>[
      MedicineModel(name: "Panadol", imagePath: "assets/med1.png", price: 5.5),
      MedicineModel(name: "Brufen", imagePath: "assets/med1.png", price: 6.0),
      MedicineModel(name: "Voltaren", imagePath: "assets/med1.png", price: 7.2),
      MedicineModel(name: "Adol", imagePath: "assets/med1.png", price: 4.9),
      MedicineModel(name: "Cataflam", imagePath: "assets/med1.png", price: 6.5),
      MedicineModel(
          name: "Augmentin", imagePath: "assets/med1.png", price: 8.0),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryName),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          itemCount: medicines.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 0.75,
          ),
          itemBuilder: (context, index) {
            final m = medicines[index];
            return GestureDetector(
              onTap: () {
                // TODO: navigate to medicine details
              },
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                        ),
                        child: Image.asset(
                          m.imagePath,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(m.name,
                              style:
                                  const TextStyle(fontWeight: FontWeight.w700)),
                          const SizedBox(height: 4),
                          Text('\$${m.price}',
                              style: const TextStyle(color: Colors.green)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
