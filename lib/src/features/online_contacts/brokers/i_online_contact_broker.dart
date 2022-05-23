import '../models/models.dart';

abstract class IOnlineContactsBroker {
  Future<List<OnlineContactModel>> getOnlineContacts();
}
