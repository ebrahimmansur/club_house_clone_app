import '../../../shared/shared.dart';
import '../online_contacts.dart';

class OnlineContactService implements IOnlineContactService {
  final IOnlineContactsBroker _onlineContactsBroker = OnlineContactBroker();
  @override
  Future<ResultWrapper<BaseFailure, List<OnlineContactModel>>>
      getOnlineContacts() async {
    final responce = await _onlineContactsBroker.getOnlineContacts();
    return ResultWrapper.right(responce);
  }
}
