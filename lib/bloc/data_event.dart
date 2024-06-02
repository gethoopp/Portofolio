part of 'data_bloc.dart';

@immutable
sealed class DataEvent {}


final class NewData extends DataEvent{
   List<Object> get props => [];
}
