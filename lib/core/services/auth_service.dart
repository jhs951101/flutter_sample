import 'package:get/get.dart';
import 'package:berrigo/config/constants/constants.dart';

class AuthService {
  factory AuthService() => _instance;

  AuthService._internal();

  static final AuthService _instance = AuthService._internal();

  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {}

  Future<void> signUpWithEmailAndPassword({
    required String email,
    required String password,
  }) async {}

  Future<void> signOut() async {
    Future.delayed(Duration.zero, () {
      Get.offAllNamed(RouteName().splash);
    });
  }

  Future<void> sendPasswordResetEmail({
    required String email,
  }) async {}

  Future<void> withDrawer() async {}
}
