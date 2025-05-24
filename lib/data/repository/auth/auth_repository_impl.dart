import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/data/models/auth/create_user_req.dart';
import 'package:flutter_application_1/data/sources/auth/auth_firebase_service.dart';
import 'package:flutter_application_1/domain/entities/repository/usecases/auth/auth.dart';
import 'package:flutter_application_1/service_locator.dart';

class AuthRepositoryImpl extends AuthRepository {
  @override
  Future<void> signin() async {
    throw UnimplementedError();
  }

  @override
  Future<Either> signup(CreateUserReq createUserReq) async {
    return await sl<AuthFirebaseService>().signup(createUserReq);
  }
}
