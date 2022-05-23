import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'online_contact_state.dart';

class OnlineContactCubit extends Cubit<OnlineContactState> {
  OnlineContactCubit() : super(OnlineContactInitial());
}
