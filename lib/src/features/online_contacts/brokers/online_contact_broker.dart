import '../online_contacts.dart';

class OnlineContactBroker implements IOnlineContactsBroker {
  @override
  Future<List<OnlineContactModel>> getOnlineContacts() async {
    Future.delayed(const Duration(seconds: 2));
    return [
      OnlineContactModel(
        id: 1,
        name: "Sam Grey",
        handler: "@Sam99",
        profileImageUrl: "profileImageUrl",
      ),
      OnlineContactModel(
        id: 2,
        name: "Ebrahim Mansur",
        handler: "@happy_man",
        profileImageUrl: "profileImageUrl",
      ),
      OnlineContactModel(
        id: 3,
        name: "So Lee",
        handler: "@The_Sun",
        profileImageUrl: "profileImageUrl",
      )
    ];
  }
}
