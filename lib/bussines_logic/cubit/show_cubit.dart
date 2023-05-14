import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:test12/data/models/show.dart';

import '../../data/repositery/showrepsitery.dart';

part 'show_state.dart';

class ShowCubit extends Cubit<ShowState> {
  final ShowRepostairy showRepostairy;
  late List<Show> show;

  ShowCubit(this.showRepostairy) : super(ShowInitial());

  List<Show> getallshow(){
    showRepostairy.getallshow().then((Show){
      emit(ShowLoaded(Show));
      this.show=Show;
    });
    return show;
  }
}
