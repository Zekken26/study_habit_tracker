import 'package:dartz/dartz.dart';
import '../../../core/failures.dart';
import '../entities/user.dart';
import '../repositories/auth_repository.dart';

class UpdateProfileUseCase {
  final AuthRepository repository;

  UpdateProfileUseCase(this.repository);

  Future<Either<Failure, User>> call(String name, String? avatarUrl) async {
    return await repository.updateProfile(name, avatarUrl);
  }
}