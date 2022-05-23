import '../../../shared/shared.dart';

abstract class IContactsOnlineApiBroker {
  Future<List<ContactModel>> getOnlineContacts() async {
    await Future.delayed(const Duration(seconds: 2));
    return [
      ContactModel(
        id: 1,
        name: "Tom Walker",
        handlerName: "Sunny99",
        profileImageUrl: "profileImageUrl",
      ),
      ContactModel(
        id: 2,
        name: "Sam Den",
        handlerName: "SamDen",
        profileImageUrl: "profileImageUrl",
      ),
      ContactModel(
        id: 3,
        name: "So Young",
        handlerName: "Sun_Girle",
        profileImageUrl: "profileImageUrl",
      ),
    ];
  }
}
