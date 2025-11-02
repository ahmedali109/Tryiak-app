import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:easy_localization/easy_localization.dart';

import '../../../core/router/go_router.dart';
import '../../../core/widgets/toast.dart';
import '../data/model/resend_verification_request_body.dart';
import '../logic/auth_cubit.dart';
import '../logic/auth_state.dart';

class VerifyEmailScreen extends StatefulWidget {
  final String email;

  const VerifyEmailScreen({
    super.key,
    required this.email,
  });

  @override
  State<VerifyEmailScreen> createState() => _VerifyEmailScreenState();
}

class _VerifyEmailScreenState extends State<VerifyEmailScreen> {
  final List<TextEditingController> _controllers =
      List.generate(6, (index) => TextEditingController());
  final List<FocusNode> _focusNodes = List.generate(6, (index) => FocusNode());

  bool _isLoading = false;

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    for (var focusNode in _focusNodes) {
      focusNode.dispose();
    }
    super.dispose();
  }

  String get _otpCode {
    return _controllers.map((controller) => controller.text).join();
  }

  bool get _isOtpComplete {
    return _otpCode.length == 6;
  }

  void _onOtpChanged(String value, int index) {
    if (value.isNotEmpty && index < 5) {
      _focusNodes[index + 1].requestFocus();
    } else if (value.isEmpty && index > 0) {
      _focusNodes[index - 1].requestFocus();
    }

    setState(() {});
  }

  void _onVerifyPressed() async {
    if (!_isOtpComplete) {
      showErrorToast(
          context: context, message: "Please enter the complete 6-digit code");
      return;
    }

    setState(() {
      _isLoading = true;
    });

    try {
      final authCubit = context.read<AuthCubit>();
      final success = await authCubit.verifyEmail(widget.email, _otpCode);

      if (success && mounted) {
        showSuccessToast(
            context: context, message: "Email verified successfully!");
      } else {
        if (mounted) {
          showErrorToast(
              context: context,
              message: "Verification failed. Please try again.");
        }
      }
    } catch (e) {
      if (mounted) {
        showErrorToast(
            context: context,
            message: "Verification failed. Please try again.");
      }
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  void _onResendPressed() async {
    try {
      final authCubit = context.read<AuthCubit>();
      final success = await authCubit.resendVerificationCode(
          ResendVerificationRequestBody(email: widget.email));

      if (success && mounted) {
        showSuccessToast(
            context: context,
            message: "Verification code sent to ${widget.email}");
      } else if (mounted) {
        showErrorToast(
            context: context,
            message: "Failed to resend code. Please try again.");
      }
    } catch (e) {
      if (mounted) {
        showErrorToast(
            context: context,
            message: "Failed to resend code. Please try again.");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is Authenticated) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            context.go(AppPath.home);
          });
        } else if (state is AuthError) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.message),
              backgroundColor: Colors.red[600],
              behavior: SnackBarBehavior.floating,
              duration: const Duration(seconds: 4),
              action: SnackBarAction(
                label: 'Dismiss',
                textColor: Colors.white,
                onPressed: () {
                  ScaffoldMessenger.of(context).hideCurrentSnackBar();
                },
              ),
            ),
          );
        }
      },
      child: Scaffold(
        backgroundColor: theme.scaffoldBackgroundColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: theme.iconTheme.color,
            ),
            onPressed: () => context.pop(),
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 40),

                // Email verification icon
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: theme.primaryColor.withValues(alpha: 0.1),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.email_outlined,
                    size: 40,
                    color: theme.primaryColor,
                  ),
                ),

                const SizedBox(height: 32),

                // Title
                Text(
                  "verify_email".tr(),
                  style: theme.textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 16),

                // Subtitle
                Text(
                  "verification_code_sent".tr(),
                  style: theme.textTheme.bodyLarge?.copyWith(
                    color: theme.textTheme.bodyLarge?.color
                        ?.withValues(alpha: 0.7),
                  ),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 8),

                // Email display
                Text(
                  widget.email,
                  style: theme.textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: theme.primaryColor,
                  ),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 48),

                // OTP Input Fields
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(6, (index) {
                    return SizedBox(
                      width: 45,
                      height: 55,
                      child: TextFormField(
                        controller: _controllers[index],
                        focusNode: _focusNodes[index],
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        maxLength: 1,
                        style: theme.textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        decoration: InputDecoration(
                          counterText: '',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: theme.dividerColor,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: theme.primaryColor,
                              width: 2,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: theme.dividerColor,
                            ),
                          ),
                          filled: true,
                          fillColor: theme.cardColor,
                        ),
                        onChanged: (value) => _onOtpChanged(value, index),
                      ),
                    );
                  }),
                ),

                const SizedBox(height: 32),

                // Verify Button
                SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: ElevatedButton(
                    onPressed: _isLoading ? null : _onVerifyPressed,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: theme.primaryColor,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      elevation: 0,
                    ),
                    child: _isLoading
                        ? const SizedBox(
                            width: 24,
                            height: 24,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              valueColor:
                                  AlwaysStoppedAnimation<Color>(Colors.white),
                            ),
                          )
                        : Text(
                            "verify".tr(),
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                  ),
                ),

                const SizedBox(height: 24),

                // Resend Code
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "didnt_receive_code".tr(),
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: theme.textTheme.bodyMedium?.color
                            ?.withValues(alpha: 0.7),
                      ),
                    ),
                    TextButton(
                      onPressed: _onResendPressed,
                      child: Text(
                        "resend".tr(),
                        style: TextStyle(
                          color: theme.primaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),

                const Spacer(),
              ],
            ),
          ),
        ), // Close SafeArea
      ), // Close Scaffold
    ); // Close BlocListener
  }
}
