import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/core/configs/theme/usecase/usecase.dart';
import 'package:flutter_application_1/data/models/auth/create_user_req.dart';
import 'package:flutter_application_1/domain/entities/repository/usecases/auth/auth.dart';
import 'package:flutter_application_1/service_locator.dart';

class SignupUseCase implements UseCase<Either, CreateUserReq> {
  @override
  Future<Either> call({CreateUserReq? params}) {
    return sl<AuthRepository>().signup(params!);
  }
}
