part of 'online_contact_cubit.dart';

abstract class OnlineContactState extends Equatable {
  const OnlineContactState();

  @override
  List<Object> get props => [];
}

class OnlineContactInitial extends OnlineContactState {}

class LoadingOnlineContactState extends OnlineContactState {}

class NetworkFailureOnlineContactState extends OnlineContactState {
  final String message;
  const NetworkFailureOnlineContactState({required this.message});
}

class ServerFailureOnlineContactState extends OnlineContactState {
  final String message;
  const ServerFailureOnlineContactState({required this.message});
}

class UnknownFailureOnlineContactState extends OnlineContactState {
  final String message;
  const UnknownFailureOnlineContactState({required this.message});
}

class SucessOnlineContactState extends OnlineContactState {
  final List<OnlineContactViewModel> models;
  const SucessOnlineContactState({required this.models});
}
