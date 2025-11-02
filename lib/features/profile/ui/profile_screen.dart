import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../core/constants/app_strings.dart';
import '../../../core/helpers/shared_pref_helper.dart';
import '../../../core/router/go_router.dart';
import '../../auth/logic/auth_cubit.dart';
import '../../auth/data/model/logout_request_body.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Welcome to the Profile Screen!'),
            const SizedBox(height: 20),

            // Logout button
            ElevatedButton.icon(
              onPressed: () async {
                // Simple logout: just clear authentication data
                await SharedPrefHelper.clearAllSecuredData();

                if (!context.mounted) return;

                // Update auth state to unauthenticated
                final authCubit = context.read<AuthCubit>();
                // Force check auth which will set state to unauthenticated since token is cleared
                authCubit.checkAuth();

                if (context.mounted) {
                  // Navigate to splash screen after logout
                  context.go(AppPath.splash);
                }
              },
              icon: const Icon(Icons.logout),
              label: const Text('Simple Logout'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
              ),
            ),

            const SizedBox(height: 10),

            // API Logout button (if you need to call the logout API)
            ElevatedButton.icon(
              onPressed: () async {
                if (!context.mounted) return;

                // Call logout method from AuthCubit
                final authCubit = context.read<AuthCubit>();

                // Get current user for logout request
                final currentUser = authCubit.currentUser;

                // Create logout request body with current user's email
                final logoutRequest = LogoutRequestBody(
                  email: currentUser?.email ?? 'user@example.com',
                  password:
                      '', // Password might not be needed for logout in practice
                );

                await authCubit.logout(logoutRequest);

                if (context.mounted) {
                  // Navigate to splash screen after logout
                  context.go(AppPath.splash);
                }
              },
              icon: const Icon(Icons.api),
              label: const Text('API Logout'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                foregroundColor: Colors.white,
              ),
            ),

            const SizedBox(height: 20),

            // Debug button to reset onboarding (for testing purposes)
            ElevatedButton(
              onPressed: () async {
                // Clear onboarding completion status
                await SharedPrefHelper.removeData(
                    AppStrings.onboardingComplete);
                // Clear all secured data (tokens)
                await SharedPrefHelper.clearAllSecuredData();

                if (context.mounted) {
                  // Navigate back to splash screen to restart the flow
                  context.go(AppPath.splash);
                }
              },
              child: const Text('Reset App Data (Debug)'),
            ),
          ],
        ),
      ),
    );
  }
}
