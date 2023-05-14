part of 'show_cubit.dart';

@immutable
abstract class ShowState {}

class ShowInitial extends ShowState {}

class ShowLoaded extends ShowState{
  final List<Show>show;
  ShowLoaded(this.show);
}
