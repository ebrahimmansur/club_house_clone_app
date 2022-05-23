import 'package:flutter/material.dart';

import '../../../shared/abstractions/i_mapper.dart';
import '../online_contacts.dart';

class OnlineContactViewMapper
    implements IMapper<List<OnlineContactModel>, List<OnlineContactViewModel>> {
  @override
  List<OnlineContactViewModel> map(List<OnlineContactModel> input) {
    return input
        .map((contact) => OnlineContactViewModel(
            id: contact.id,
            name: contact.name,
            onlineColor: Colors.green,
            imageUrl: contact.profileImageUrl))
        .toList();
  }
}
