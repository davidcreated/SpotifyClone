import 'package:flutter_application_1/data/repository/auth/auth_repository_impl.dart';
import 'package:flutter_application_1/data/sources/auth/auth_firebase_service.dart';
import 'package:flutter_application_1/domain/entities/repository/usecases/auth/auth.dart';
import 'package:flutter_application_1/domain/usecases/auth/signup.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;
// Service Locator

// This is a singleton instance of the GetIt class
Future<void> initializeDependencies() async {
  // Register your services and repositories here
  // Example:
  // sl.registerLazySingleton<SomeService>(() => SomeServiceImpl());
  // sl.registerLazySingleton<SomeRepository>(() => SomeRepositoryImpl());
  sl.registerSingleton<AuthFirebaseService>(AuthFirebaseServiceImpl());

  // Register other services and repositories as needed
  // sl.registerLazySingleton<AnotherService>(() => AnotherServiceImpl());
  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl());
  // Register other services and repositories as needed
  // sl.registerLazySingleton<AnotherRepository>(() => AnotherRepositoryImpl());
  // Register other services and repositories as needed

  sl.registerSingleton<SignupUseCase>(SignupUseCase());
}
