import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:porto/controller/dio/provider.dart';

part 'data_event.dart';
part 'data_state.dart';

class DataBloc extends Bloc<DataEvent, DataState> {
  final service = Provider();
  DataBloc() : super(DataInitial()) {
    on<NewData>((event, emit) async {
      Future.delayed(Duration(seconds: 2));
      try {
        final result = await service.getResult();

        emit(DatasSucces(result));
      } catch (e) {
        emit(Dataerr());
      }
    });
  }
}
