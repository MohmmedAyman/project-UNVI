
import 'package:test12/data/api/login.dart';
import 'package:test12/data/models/show.dart';

class ShowRepostairy{
  final Loginapi loginapi;
  ShowRepostairy(this.loginapi);
  Future<List<Show>> getallshow() async{
    final show = await loginapi.getallshow();
    return show.map((show) => Show.fromJson(show)).toList();
  }
}