import 'package:cep_app/models/endereco_model.dart';

abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeFailure extends HomeState {}

class HomeLoaded extends HomeState {
  final EnderecoModel enderecoModel;
  HomeLoaded({
    required this.enderecoModel,
  });
}
