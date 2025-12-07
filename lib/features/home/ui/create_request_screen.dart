import 'package:flutter/material.dart';
import 'package:tryiak/features/location/ui/select_location_screen.dart';
import 'package:tryiak/features/location/data/location_model.dart';
import '../data/model/medicine_model.dart';

class CreateRequestScreen extends StatefulWidget {
  final MedicineModel medicine;

  const CreateRequestScreen({super.key, required this.medicine});

  @override
  State<CreateRequestScreen> createState() => _CreateRequestScreenState();
}

class _CreateRequestScreenState extends State<CreateRequestScreen> {
  int _quantity = 1;
  int _deliveryOptionIndex = 0;
  LocationModel? _selectedLocation;

  void _increment() => setState(() => _quantity++);
  void _decrement() {
    if (_quantity > 1) setState(() => _quantity--);
  }

  @override
  Widget build(BuildContext context) {
    final med = widget.medicine;
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Request'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(color: Colors.grey.shade200, blurRadius: 6),
                ],
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: med.imagePath.isNotEmpty
                        ? Image.asset(med.imagePath,
                            height: 64, width: 64, fit: BoxFit.cover)
                        : Container(
                            height: 64, width: 64, color: Colors.grey[200]),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(med.name,
                            style: theme.textTheme.titleMedium
                                ?.copyWith(fontWeight: FontWeight.w600)),
                        const SizedBox(height: 4),
                        if ((med.genericName ?? '').isNotEmpty)
                          Text(med.genericName!,
                              style: theme.textTheme.bodySmall
                                  ?.copyWith(color: Colors.grey[700])),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 6, horizontal: 10),
                              decoration: BoxDecoration(
                                  color: Colors.blue.shade50,
                                  borderRadius: BorderRadius.circular(8)),
                              child: Text(med.form ?? '-',
                                  style: theme.textTheme.bodySmall
                                      ?.copyWith(color: Colors.blue[700])),
                            ),
                            const SizedBox(width: 8),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 6, horizontal: 10),
                              decoration: BoxDecoration(
                                  color: Colors.green.shade50,
                                  borderRadius: BorderRadius.circular(8)),
                              child: Text(med.form ?? '-',
                                  style: theme.textTheme.bodySmall
                                      ?.copyWith(color: Colors.green[700])),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 18),

            // Quantity
            Text('Quantity',
                style: theme.textTheme.bodyLarge
                    ?.copyWith(fontWeight: FontWeight.w600)),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(color: Colors.grey.shade100, blurRadius: 6)
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: _decrement,
                    child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.grey.shade100,
                        child: const Icon(Icons.remove, color: Colors.black)),
                  ),
                  const SizedBox(width: 24),
                  Text('$_quantity', style: theme.textTheme.titleMedium),
                  const SizedBox(width: 24),
                  GestureDetector(
                    onTap: _increment,
                    child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.blue,
                        child: const Icon(Icons.add, color: Colors.white)),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 18),

            // Delivery options
            Text('Delivery Option',
                style: theme.textTheme.bodyLarge
                    ?.copyWith(fontWeight: FontWeight.w600)),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () => setState(() => _deliveryOptionIndex = 0),
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: _deliveryOptionIndex == 0
                            ? Colors.blue.shade50
                            : Colors.white,
                        border: Border.all(
                            color: _deliveryOptionIndex == 0
                                ? Colors.blue
                                : Colors.grey.shade200),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Delivery',
                              style: theme.textTheme.bodyMedium?.copyWith(
                                  color: _deliveryOptionIndex == 0
                                      ? Colors.blue
                                      : Colors.grey[700])),
                          const SizedBox(height: 6),
                          Text('To your address',
                              style: theme.textTheme.bodySmall
                                  ?.copyWith(color: Colors.grey[600])),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: GestureDetector(
                    onTap: () => setState(() => _deliveryOptionIndex = 1),
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: _deliveryOptionIndex == 1
                            ? Colors.white
                            : Colors.white,
                        border: Border.all(
                            color: _deliveryOptionIndex == 1
                                ? Colors.blue
                                : Colors.grey.shade200),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Pickup',
                              style: theme.textTheme.bodyMedium?.copyWith(
                                  color: _deliveryOptionIndex == 1
                                      ? Colors.blue
                                      : Colors.grey[700])),
                          const SizedBox(height: 6),
                          Text('From pharmacy',
                              style: theme.textTheme.bodySmall
                                  ?.copyWith(color: Colors.grey[600])),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 18),

            Text('Delivery Address',
                style: theme.textTheme.bodyLarge
                    ?.copyWith(fontWeight: FontWeight.w600)),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(color: Colors.grey.shade100, blurRadius: 6)
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.location_on_outlined,
                          size: 18, color: Colors.grey),
                      const SizedBox(width: 8),
                      Expanded(
                          child: Text(
                              _selectedLocation?.address ??
                                  '123 Main Street, Cairo, Egypt',
                              style: theme.textTheme.bodySmall
                                  ?.copyWith(color: Colors.grey[700]))),
                    ],
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () async {
                        final result =
                            await Navigator.of(context).push<LocationModel?>(
                          MaterialPageRoute(
                            builder: (_) => SelectLocationScreen(
                              initialLatitude: _selectedLocation?.latitude,
                              initialLongitude: _selectedLocation?.longitude,
                              initialAddress: _selectedLocation?.address,
                            ),
                          ),
                        );
                        if (result != null) {
                          setState(() {
                            _selectedLocation = result;
                          });
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue.shade50,
                        foregroundColor: Colors.blue[700],
                        elevation: 0,
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      child: const Text('Choose on Map'),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 18),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.all(12),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SizedBox(
            height: 48,
            child: ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('Request sent (placeholder)')));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF75DDFA),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
              child: const Text('Send Request to Nearby Pharmacies'),
            ),
          ),
        ),
      ),
    );
  }
}
