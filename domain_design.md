# Domain Layer Design for User Accounts & Profiles

This document outlines the Clean Architecture domain layer classes for the User Accounts & Profiles feature in the Study Habit Tracker App. It includes entities, repositories (interfaces), use cases, and failures. The design uses Firebase Authentication for auth, with user roles (Student, Parent/Teacher/Tutor) for authorization. Packages: equatable, dartz.

## Core Components

### Failures
- **Base Class**: `Failure` (abstract, extends Equatable)
- **Subclasses**:
  - `AuthFailure` (for authentication errors, e.g., invalid credentials, user not found)
  - `ServerFailure` (for server-related errors)
  - `CacheFailure` (for local cache errors, if applicable)

### Entities
- **User**:
  - Properties: id (String), email (String), name (String), role (UserRole), avatarUrl (String?), createdAt (DateTime)
  - Extends Equatable
  - UserRole enum: student, parentTutor

### Repositories (Interfaces)
- **AuthRepository**:
  - Methods:
    - `Future<Either<Failure, User>> signIn(String email, String password)`
    - `Future<Either<Failure, User>> signUp(String email, String password, String name, UserRole role)`
    - `Future<Either<Failure, User?>> getCurrentUser()`
    - `Future<Either<Failure, void>> signOut()`
    - `Future<Either<Failure, User>> updateProfile(String name, String? avatarUrl)`

### Use Cases
- **SignInUseCase**:
  - Input: email, password
  - Output: Either<Failure, User>
  - Calls AuthRepository.signIn

- **SignUpUseCase**:
  - Input: email, password, name, role
  - Output: Either<Failure, User>
  - Calls AuthRepository.signUp

- **GetCurrentUserUseCase**:
  - Input: none
  - Output: Either<Failure, User?>
  - Calls AuthRepository.getCurrentUser

- **SignOutUseCase**:
  - Input: none
  - Output: Either<Failure, void>
  - Calls AuthRepository.signOut

- **UpdateProfileUseCase**:
  - Input: name, avatarUrl
  - Output: Either<Failure, User>
  - Calls AuthRepository.updateProfile

All use cases follow the pattern: take inputs, call repository, return Either<Failure, Result>.

## Implementation Notes
- No Params classes; inputs are passed directly to use cases.
- Use Either from dartz for error handling.
- Entities are pure Dart, no external dependencies.
- Repositories are abstract interfaces; implementation will be in the data layer.
- This design ensures testability and separation of concerns.