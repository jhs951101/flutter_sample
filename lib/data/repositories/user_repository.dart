import '../models/models.dart';

class UserRepository {
  Future<UserModel?> getUser() async {
    return null;
    // Fetch user from API
  }

  Future<void> updateUser({required UserModel user}) async {
    // Update user to API
  }

  Future<void> deleteUser({required UserModel user}) async {
    // Delete user from API
  }

  Future<void> createUser({required UserModel user}) async {
    // Create user to API
  }
}
