import 'package:dartz/dartz.dart';
import '../../../core/failures.dart';
import '../entities/user.dart';
import '../repositories/auth_repository.dart';

class SignInUseCase {
  final AuthRepository repository;

  SignInUseCase(this.repository);

  Future<Either<Failure, User>> call(String email, String password) async {
    return await repository.signIn(email, password);
  }
}