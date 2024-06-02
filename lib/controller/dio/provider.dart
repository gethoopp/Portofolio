
import 'package:porto/controller/dio/dio.dart';



class Provider {
  final _provide = ApiService();

  Future<List<dynamic>> getResult() async{
    return await _provide.fetchUsers();
  }


}