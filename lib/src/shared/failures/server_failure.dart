import 'package:club_house_clone_app/src/shared/failures/base_failure.dart';

class ServerFailure extends BaseFailure {
  ServerFailure({required String message}) : super(code: 102, message: message);
}
