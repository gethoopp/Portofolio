part of 'data_bloc.dart';

@immutable
sealed class DataState {}

final class DataInitial extends DataState {}

final class DataLoad extends DataState {}

final class DatasSucces extends DataState {
  final List<dynamic> datas;

  DatasSucces(this.datas);
}

final class Dataerr extends DataState {}
