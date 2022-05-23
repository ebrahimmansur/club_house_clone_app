import '../../../shared/abstractions/i_mapper.dart';
import '../../../shared/shared.dart';
import '../online_contacts.dart';

class OnlineContactFailureMapper
    implements IMapper<BaseFailure, OnlineContactState> {
  @override
  OnlineContactState map(BaseFailure input) {
    if (input is NetworkFailure)
      return NetworkFailureOnlineContactState(message: input.message);

    if (input is ServerFailure)
      return ServerFailureOnlineContactState(message: input.message);

    return UnknownFailureOnlineContactState(message: input.message);
  }
}
