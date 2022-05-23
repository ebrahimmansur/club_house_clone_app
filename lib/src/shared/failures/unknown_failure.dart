import 'package:club_house_clone_app/src/shared/failures/base_failure.dart';

class UnknownFailure extends BaseFailure {
  UnknownFailure({required String message})
      : super(code: 103, message: message);
}
