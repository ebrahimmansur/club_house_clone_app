import 'package:club_house_clone_app/src/features/online_contacts/models/online_contact_model.dart';
import 'package:club_house_clone_app/src/shared/failures/base_failure.dart';

import '../../../shared/shared.dart';

abstract class IOnlineContactService {
  Future<ResultWrapper<BaseFailure, List<OnlineContactModel>>>
      getOnlineContacts();
}
