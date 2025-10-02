import 'package:dartz/dartz.dart';
import '../../../core/failures.dart';
import '../entities/user.dart';
import '../repositories/auth_repository.dart';

class SignUpUseCase {
  final AuthRepository repository;

  SignUpUseCase(this.repository);

  Future<Either<Failure, User>> call(String email, String password, String name, UserRole role) async {
    return await repository.signUp(email, password, name, role);
  }
}