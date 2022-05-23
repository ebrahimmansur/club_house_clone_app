import 'package:club_house_clone_app/src/shared/failures/base_failure.dart';

class NetworkFailure extends BaseFailure {
  NetworkFailure({required String message})
      : super(code: 101, message: message);
}
