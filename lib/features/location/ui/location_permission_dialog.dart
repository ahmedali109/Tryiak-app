import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../logic/location_cubit.dart';
import '../logic/location_state.dart';

class LocationPermissionDialog extends StatelessWidget {
  final VoidCallback onPermissionGranted;

  const LocationPermissionDialog({
    super.key,
    required this.onPermissionGranted,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<LocationCubit, LocationState>(
      listener: (context, state) {
        state.when(
          initial: () {},
          loading: () {},
          loaded: (lat, lng, address) {
            onPermissionGranted();
            Navigator.of(context).pop();
          },
          error: (message) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(message)),
            );
          },
        );
      },
      child: AlertDialog(
        title: const Text('Allow Location Access'),
        content: const Text(
          'To provide you with better service, we need access to your location. '
          'This helps us show nearby medicines and pharmacies.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Not Now'),
          ),
          ElevatedButton(
            onPressed: () {
              context.read<LocationCubit>().requestLocationPermission();
            },
            child: const Text('Allow'),
          ),
        ],
      ),
    );
  }
}
