import 'package:cep_app/pages/state_single_class/home_state.dart';
import 'package:cep_app/repositories/cep_repository.dart';
import 'package:cep_app/repositories/cep_repository_impl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeSingleClassController extends Cubit<HomeState> {
  final CepRepository cepRepository = CepRepositoryImpl();
  HomeSingleClassController() : super(HomeState());

  Future<void> findCEP(String cep) async {
    try {
      emit(state.copyWith(status: HomeStatus.loading));
      final enderecoModel = await cepRepository.getCep(cep);

      emit(state.copyWith(
          status: HomeStatus.loaded, enderecoModel: enderecoModel));
    } catch (e) {
      emit(state.copyWith(status: HomeStatus.failure));
    }
  }
}
