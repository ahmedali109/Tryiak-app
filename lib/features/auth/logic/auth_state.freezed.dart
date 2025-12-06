// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthState()';
  }
}

/// @nodoc
class $AuthStateCopyWith<$Res> {
  $AuthStateCopyWith(AuthState _, $Res Function(AuthState) __);
}

/// Adds pattern-matching-related methods to [AuthState].
extension AuthStatePatterns on AuthState {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(AuthLoading value)? loading,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(EmailVerificationPending value)? emailVerificationPending,
    TResult Function(AuthError value)? error,
    TResult Function(RegisterPasswordObsecure value)? registerPasswordObsecure,
    TResult Function(RegisterPasswordNotObsecure value)?
        registerPasswordNotObsecure,
    TResult Function(RegisterPasswordConfirmationObsecure value)?
        registerPasswordConfirmationObsecure,
    TResult Function(RegisterPasswordConfirmationNotObsecure value)?
        registerPasswordConfirmationNotObsecure,
    TResult Function(LoginPasswordObsecure value)? loginPasswordObsecure,
    TResult Function(LoginPasswordNotObsecure value)? loginPasswordNotObsecure,
    TResult Function(PasswordValidationsState value)? passwordValidations,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case AuthInitial() when initial != null:
        return initial(_that);
      case AuthLoading() when loading != null:
        return loading(_that);
      case Authenticated() when authenticated != null:
        return authenticated(_that);
      case Unauthenticated() when unauthenticated != null:
        return unauthenticated(_that);
      case EmailVerificationPending() when emailVerificationPending != null:
        return emailVerificationPending(_that);
      case AuthError() when error != null:
        return error(_that);
      case RegisterPasswordObsecure() when registerPasswordObsecure != null:
        return registerPasswordObsecure(_that);
      case RegisterPasswordNotObsecure()
          when registerPasswordNotObsecure != null:
        return registerPasswordNotObsecure(_that);
      case RegisterPasswordConfirmationObsecure()
          when registerPasswordConfirmationObsecure != null:
        return registerPasswordConfirmationObsecure(_that);
      case RegisterPasswordConfirmationNotObsecure()
          when registerPasswordConfirmationNotObsecure != null:
        return registerPasswordConfirmationNotObsecure(_that);
      case LoginPasswordObsecure() when loginPasswordObsecure != null:
        return loginPasswordObsecure(_that);
      case LoginPasswordNotObsecure() when loginPasswordNotObsecure != null:
        return loginPasswordNotObsecure(_that);
      case PasswordValidationsState() when passwordValidations != null:
        return passwordValidations(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) initial,
    required TResult Function(AuthLoading value) loading,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(EmailVerificationPending value)
        emailVerificationPending,
    required TResult Function(AuthError value) error,
    required TResult Function(RegisterPasswordObsecure value)
        registerPasswordObsecure,
    required TResult Function(RegisterPasswordNotObsecure value)
        registerPasswordNotObsecure,
    required TResult Function(RegisterPasswordConfirmationObsecure value)
        registerPasswordConfirmationObsecure,
    required TResult Function(RegisterPasswordConfirmationNotObsecure value)
        registerPasswordConfirmationNotObsecure,
    required TResult Function(LoginPasswordObsecure value)
        loginPasswordObsecure,
    required TResult Function(LoginPasswordNotObsecure value)
        loginPasswordNotObsecure,
    required TResult Function(PasswordValidationsState value)
        passwordValidations,
  }) {
    final _that = this;
    switch (_that) {
      case AuthInitial():
        return initial(_that);
      case AuthLoading():
        return loading(_that);
      case Authenticated():
        return authenticated(_that);
      case Unauthenticated():
        return unauthenticated(_that);
      case EmailVerificationPending():
        return emailVerificationPending(_that);
      case AuthError():
        return error(_that);
      case RegisterPasswordObsecure():
        return registerPasswordObsecure(_that);
      case RegisterPasswordNotObsecure():
        return registerPasswordNotObsecure(_that);
      case RegisterPasswordConfirmationObsecure():
        return registerPasswordConfirmationObsecure(_that);
      case RegisterPasswordConfirmationNotObsecure():
        return registerPasswordConfirmationNotObsecure(_that);
      case LoginPasswordObsecure():
        return loginPasswordObsecure(_that);
      case LoginPasswordNotObsecure():
        return loginPasswordNotObsecure(_that);
      case PasswordValidationsState():
        return passwordValidations(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(AuthLoading value)? loading,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(EmailVerificationPending value)? emailVerificationPending,
    TResult? Function(AuthError value)? error,
    TResult? Function(RegisterPasswordObsecure value)? registerPasswordObsecure,
    TResult? Function(RegisterPasswordNotObsecure value)?
        registerPasswordNotObsecure,
    TResult? Function(RegisterPasswordConfirmationObsecure value)?
        registerPasswordConfirmationObsecure,
    TResult? Function(RegisterPasswordConfirmationNotObsecure value)?
        registerPasswordConfirmationNotObsecure,
    TResult? Function(LoginPasswordObsecure value)? loginPasswordObsecure,
    TResult? Function(LoginPasswordNotObsecure value)? loginPasswordNotObsecure,
    TResult? Function(PasswordValidationsState value)? passwordValidations,
  }) {
    final _that = this;
    switch (_that) {
      case AuthInitial() when initial != null:
        return initial(_that);
      case AuthLoading() when loading != null:
        return loading(_that);
      case Authenticated() when authenticated != null:
        return authenticated(_that);
      case Unauthenticated() when unauthenticated != null:
        return unauthenticated(_that);
      case EmailVerificationPending() when emailVerificationPending != null:
        return emailVerificationPending(_that);
      case AuthError() when error != null:
        return error(_that);
      case RegisterPasswordObsecure() when registerPasswordObsecure != null:
        return registerPasswordObsecure(_that);
      case RegisterPasswordNotObsecure()
          when registerPasswordNotObsecure != null:
        return registerPasswordNotObsecure(_that);
      case RegisterPasswordConfirmationObsecure()
          when registerPasswordConfirmationObsecure != null:
        return registerPasswordConfirmationObsecure(_that);
      case RegisterPasswordConfirmationNotObsecure()
          when registerPasswordConfirmationNotObsecure != null:
        return registerPasswordConfirmationNotObsecure(_that);
      case LoginPasswordObsecure() when loginPasswordObsecure != null:
        return loginPasswordObsecure(_that);
      case LoginPasswordNotObsecure() when loginPasswordNotObsecure != null:
        return loginPasswordNotObsecure(_that);
      case PasswordValidationsState() when passwordValidations != null:
        return passwordValidations(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppUser user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(String email)? emailVerificationPending,
    TResult Function(String message)? error,
    TResult Function()? registerPasswordObsecure,
    TResult Function()? registerPasswordNotObsecure,
    TResult Function()? registerPasswordConfirmationObsecure,
    TResult Function()? registerPasswordConfirmationNotObsecure,
    TResult Function()? loginPasswordObsecure,
    TResult Function()? loginPasswordNotObsecure,
    TResult Function(bool hasLowercase, bool hasUppercase,
            bool hasSpecialCharacters, bool hasNumber, bool hasMinLength)?
        passwordValidations,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case AuthInitial() when initial != null:
        return initial();
      case AuthLoading() when loading != null:
        return loading();
      case Authenticated() when authenticated != null:
        return authenticated(_that.user);
      case Unauthenticated() when unauthenticated != null:
        return unauthenticated();
      case EmailVerificationPending() when emailVerificationPending != null:
        return emailVerificationPending(_that.email);
      case AuthError() when error != null:
        return error(_that.message);
      case RegisterPasswordObsecure() when registerPasswordObsecure != null:
        return registerPasswordObsecure();
      case RegisterPasswordNotObsecure()
          when registerPasswordNotObsecure != null:
        return registerPasswordNotObsecure();
      case RegisterPasswordConfirmationObsecure()
          when registerPasswordConfirmationObsecure != null:
        return registerPasswordConfirmationObsecure();
      case RegisterPasswordConfirmationNotObsecure()
          when registerPasswordConfirmationNotObsecure != null:
        return registerPasswordConfirmationNotObsecure();
      case LoginPasswordObsecure() when loginPasswordObsecure != null:
        return loginPasswordObsecure();
      case LoginPasswordNotObsecure() when loginPasswordNotObsecure != null:
        return loginPasswordNotObsecure();
      case PasswordValidationsState() when passwordValidations != null:
        return passwordValidations(_that.hasLowercase, _that.hasUppercase,
            _that.hasSpecialCharacters, _that.hasNumber, _that.hasMinLength);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AppUser user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(String email) emailVerificationPending,
    required TResult Function(String message) error,
    required TResult Function() registerPasswordObsecure,
    required TResult Function() registerPasswordNotObsecure,
    required TResult Function() registerPasswordConfirmationObsecure,
    required TResult Function() registerPasswordConfirmationNotObsecure,
    required TResult Function() loginPasswordObsecure,
    required TResult Function() loginPasswordNotObsecure,
    required TResult Function(bool hasLowercase, bool hasUppercase,
            bool hasSpecialCharacters, bool hasNumber, bool hasMinLength)
        passwordValidations,
  }) {
    final _that = this;
    switch (_that) {
      case AuthInitial():
        return initial();
      case AuthLoading():
        return loading();
      case Authenticated():
        return authenticated(_that.user);
      case Unauthenticated():
        return unauthenticated();
      case EmailVerificationPending():
        return emailVerificationPending(_that.email);
      case AuthError():
        return error(_that.message);
      case RegisterPasswordObsecure():
        return registerPasswordObsecure();
      case RegisterPasswordNotObsecure():
        return registerPasswordNotObsecure();
      case RegisterPasswordConfirmationObsecure():
        return registerPasswordConfirmationObsecure();
      case RegisterPasswordConfirmationNotObsecure():
        return registerPasswordConfirmationNotObsecure();
      case LoginPasswordObsecure():
        return loginPasswordObsecure();
      case LoginPasswordNotObsecure():
        return loginPasswordNotObsecure();
      case PasswordValidationsState():
        return passwordValidations(_that.hasLowercase, _that.hasUppercase,
            _that.hasSpecialCharacters, _that.hasNumber, _that.hasMinLength);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AppUser user)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function(String email)? emailVerificationPending,
    TResult? Function(String message)? error,
    TResult? Function()? registerPasswordObsecure,
    TResult? Function()? registerPasswordNotObsecure,
    TResult? Function()? registerPasswordConfirmationObsecure,
    TResult? Function()? registerPasswordConfirmationNotObsecure,
    TResult? Function()? loginPasswordObsecure,
    TResult? Function()? loginPasswordNotObsecure,
    TResult? Function(bool hasLowercase, bool hasUppercase,
            bool hasSpecialCharacters, bool hasNumber, bool hasMinLength)?
        passwordValidations,
  }) {
    final _that = this;
    switch (_that) {
      case AuthInitial() when initial != null:
        return initial();
      case AuthLoading() when loading != null:
        return loading();
      case Authenticated() when authenticated != null:
        return authenticated(_that.user);
      case Unauthenticated() when unauthenticated != null:
        return unauthenticated();
      case EmailVerificationPending() when emailVerificationPending != null:
        return emailVerificationPending(_that.email);
      case AuthError() when error != null:
        return error(_that.message);
      case RegisterPasswordObsecure() when registerPasswordObsecure != null:
        return registerPasswordObsecure();
      case RegisterPasswordNotObsecure()
          when registerPasswordNotObsecure != null:
        return registerPasswordNotObsecure();
      case RegisterPasswordConfirmationObsecure()
          when registerPasswordConfirmationObsecure != null:
        return registerPasswordConfirmationObsecure();
      case RegisterPasswordConfirmationNotObsecure()
          when registerPasswordConfirmationNotObsecure != null:
        return registerPasswordConfirmationNotObsecure();
      case LoginPasswordObsecure() when loginPasswordObsecure != null:
        return loginPasswordObsecure();
      case LoginPasswordNotObsecure() when loginPasswordNotObsecure != null:
        return loginPasswordNotObsecure();
      case PasswordValidationsState() when passwordValidations != null:
        return passwordValidations(_that.hasLowercase, _that.hasUppercase,
            _that.hasSpecialCharacters, _that.hasNumber, _that.hasMinLength);
      case _:
        return null;
    }
  }
}

/// @nodoc

class AuthInitial implements AuthState {
  const AuthInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthState.initial()';
  }
}

/// @nodoc

class AuthLoading implements AuthState {
  const AuthLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthState.loading()';
  }
}

/// @nodoc

class Authenticated implements AuthState {
  const Authenticated(this.user);

  final AppUser user;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthenticatedCopyWith<Authenticated> get copyWith =>
      _$AuthenticatedCopyWithImpl<Authenticated>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Authenticated &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @override
  String toString() {
    return 'AuthState.authenticated(user: $user)';
  }
}

/// @nodoc
abstract mixin class $AuthenticatedCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory $AuthenticatedCopyWith(
          Authenticated value, $Res Function(Authenticated) _then) =
      _$AuthenticatedCopyWithImpl;
  @useResult
  $Res call({AppUser user});
}

/// @nodoc
class _$AuthenticatedCopyWithImpl<$Res>
    implements $AuthenticatedCopyWith<$Res> {
  _$AuthenticatedCopyWithImpl(this._self, this._then);

  final Authenticated _self;
  final $Res Function(Authenticated) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? user = null,
  }) {
    return _then(Authenticated(
      null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser,
    ));
  }
}

/// @nodoc

class Unauthenticated implements AuthState {
  const Unauthenticated();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Unauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthState.unauthenticated()';
  }
}

/// @nodoc

class EmailVerificationPending implements AuthState {
  const EmailVerificationPending(this.email);

  final String email;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EmailVerificationPendingCopyWith<EmailVerificationPending> get copyWith =>
      _$EmailVerificationPendingCopyWithImpl<EmailVerificationPending>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EmailVerificationPending &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @override
  String toString() {
    return 'AuthState.emailVerificationPending(email: $email)';
  }
}

/// @nodoc
abstract mixin class $EmailVerificationPendingCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory $EmailVerificationPendingCopyWith(EmailVerificationPending value,
          $Res Function(EmailVerificationPending) _then) =
      _$EmailVerificationPendingCopyWithImpl;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$EmailVerificationPendingCopyWithImpl<$Res>
    implements $EmailVerificationPendingCopyWith<$Res> {
  _$EmailVerificationPendingCopyWithImpl(this._self, this._then);

  final EmailVerificationPending _self;
  final $Res Function(EmailVerificationPending) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
  }) {
    return _then(EmailVerificationPending(
      null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class AuthError implements AuthState {
  const AuthError(this.message);

  final String message;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthErrorCopyWith<AuthError> get copyWith =>
      _$AuthErrorCopyWithImpl<AuthError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'AuthState.error(message: $message)';
  }
}

/// @nodoc
abstract mixin class $AuthErrorCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory $AuthErrorCopyWith(AuthError value, $Res Function(AuthError) _then) =
      _$AuthErrorCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$AuthErrorCopyWithImpl<$Res> implements $AuthErrorCopyWith<$Res> {
  _$AuthErrorCopyWithImpl(this._self, this._then);

  final AuthError _self;
  final $Res Function(AuthError) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(AuthError(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class RegisterPasswordObsecure implements AuthState {
  const RegisterPasswordObsecure();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RegisterPasswordObsecure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthState.registerPasswordObsecure()';
  }
}

/// @nodoc

class RegisterPasswordNotObsecure implements AuthState {
  const RegisterPasswordNotObsecure();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegisterPasswordNotObsecure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthState.registerPasswordNotObsecure()';
  }
}

/// @nodoc

class RegisterPasswordConfirmationObsecure implements AuthState {
  const RegisterPasswordConfirmationObsecure();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegisterPasswordConfirmationObsecure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthState.registerPasswordConfirmationObsecure()';
  }
}

/// @nodoc

class RegisterPasswordConfirmationNotObsecure implements AuthState {
  const RegisterPasswordConfirmationNotObsecure();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegisterPasswordConfirmationNotObsecure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthState.registerPasswordConfirmationNotObsecure()';
  }
}

/// @nodoc

class LoginPasswordObsecure implements AuthState {
  const LoginPasswordObsecure();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoginPasswordObsecure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthState.loginPasswordObsecure()';
  }
}

/// @nodoc

class LoginPasswordNotObsecure implements AuthState {
  const LoginPasswordNotObsecure();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoginPasswordNotObsecure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthState.loginPasswordNotObsecure()';
  }
}

/// @nodoc

class PasswordValidationsState implements AuthState {
  const PasswordValidationsState(
      {required this.hasLowercase,
      required this.hasUppercase,
      required this.hasSpecialCharacters,
      required this.hasNumber,
      required this.hasMinLength});

  final bool hasLowercase;
  final bool hasUppercase;
  final bool hasSpecialCharacters;
  final bool hasNumber;
  final bool hasMinLength;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PasswordValidationsStateCopyWith<PasswordValidationsState> get copyWith =>
      _$PasswordValidationsStateCopyWithImpl<PasswordValidationsState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PasswordValidationsState &&
            (identical(other.hasLowercase, hasLowercase) ||
                other.hasLowercase == hasLowercase) &&
            (identical(other.hasUppercase, hasUppercase) ||
                other.hasUppercase == hasUppercase) &&
            (identical(other.hasSpecialCharacters, hasSpecialCharacters) ||
                other.hasSpecialCharacters == hasSpecialCharacters) &&
            (identical(other.hasNumber, hasNumber) ||
                other.hasNumber == hasNumber) &&
            (identical(other.hasMinLength, hasMinLength) ||
                other.hasMinLength == hasMinLength));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hasLowercase, hasUppercase,
      hasSpecialCharacters, hasNumber, hasMinLength);

  @override
  String toString() {
    return 'AuthState.passwordValidations(hasLowercase: $hasLowercase, hasUppercase: $hasUppercase, hasSpecialCharacters: $hasSpecialCharacters, hasNumber: $hasNumber, hasMinLength: $hasMinLength)';
  }
}

/// @nodoc
abstract mixin class $PasswordValidationsStateCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory $PasswordValidationsStateCopyWith(PasswordValidationsState value,
          $Res Function(PasswordValidationsState) _then) =
      _$PasswordValidationsStateCopyWithImpl;
  @useResult
  $Res call(
      {bool hasLowercase,
      bool hasUppercase,
      bool hasSpecialCharacters,
      bool hasNumber,
      bool hasMinLength});
}

/// @nodoc
class _$PasswordValidationsStateCopyWithImpl<$Res>
    implements $PasswordValidationsStateCopyWith<$Res> {
  _$PasswordValidationsStateCopyWithImpl(this._self, this._then);

  final PasswordValidationsState _self;
  final $Res Function(PasswordValidationsState) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? hasLowercase = null,
    Object? hasUppercase = null,
    Object? hasSpecialCharacters = null,
    Object? hasNumber = null,
    Object? hasMinLength = null,
  }) {
    return _then(PasswordValidationsState(
      hasLowercase: null == hasLowercase
          ? _self.hasLowercase
          : hasLowercase // ignore: cast_nullable_to_non_nullable
              as bool,
      hasUppercase: null == hasUppercase
          ? _self.hasUppercase
          : hasUppercase // ignore: cast_nullable_to_non_nullable
              as bool,
      hasSpecialCharacters: null == hasSpecialCharacters
          ? _self.hasSpecialCharacters
          : hasSpecialCharacters // ignore: cast_nullable_to_non_nullable
              as bool,
      hasNumber: null == hasNumber
          ? _self.hasNumber
          : hasNumber // ignore: cast_nullable_to_non_nullable
              as bool,
      hasMinLength: null == hasMinLength
          ? _self.hasMinLength
          : hasMinLength // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
