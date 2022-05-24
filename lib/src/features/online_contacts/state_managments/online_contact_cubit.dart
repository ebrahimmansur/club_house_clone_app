import 'dart:async';
import 'package:club_house_clone_app/src/features/online_contacts/mappers/online_contact_failure_mapper.dart';
import 'package:club_house_clone_app/src/shared/abstractions/i_mapper.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../shared/shared.dart';
import '../online_contacts.dart';
part 'online_contact_state.dart';

class OnlineContactCubit extends Cubit<OnlineContactState> {
  final IOnlineContactService _onlineContactService = OnlineContactService();
  final IMapper _onlineContactViewMapper = OnlineContactViewMapper();
  final IMapper _onlineContactFailureMapper = OnlineContactFailureMapper();
  OnlineContactCubit() : super(OnlineContactInitial());
  FutureOr getOnlineContacts() async {
    emit(LoadingOnlineContactState());
    final result = await _onlineContactService.getOnlineContacts();
    result.result(
        (BaseFailure failure) => emit(_onlineContactFailureMapper.map(failure)),
        (List<OnlineContactModel> data) => emit(SucessOnlineContactState(
            models: _onlineContactViewMapper.map(data))));
  }
}
