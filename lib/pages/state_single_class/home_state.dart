import 'package:cep_app/models/endereco_model.dart';

enum HomeStatus {
  initial,
  loading,
  failure,
  loaded,
}

class HomeState {
  final EnderecoModel? enderecoModel;
  final HomeStatus status;
  HomeState({
    this.enderecoModel,
    this.status = HomeStatus.initial,
  });

  HomeState copyWith({
    EnderecoModel? enderecoModel,
    HomeStatus? status,
  }) {
    return HomeState(
      enderecoModel: enderecoModel ?? this.enderecoModel,
      status: status ?? this.status,
    );
  }
}
