import '../models/dataModel.dart';
import '../repository/dataRepository.dart';
//import 'package:dio/dio.dart';

class DataAPI extends DataRepository{
  @override
/*  Future<List<DataModel>> getAllData() async {
    List<DataModel> data = [];
    // String url = "";
    // var response = await Dio().get(url);
    // var responseBody = response.data as List;
    // data = responseBody.map((data)=>DataModel.fromJson(data)).toList();
    return data;
  }*/

@override
  List<DataModel> getAllData() {
    // TODO: implement getAllData
    throw UnimplementedError();
  }

  @override
  Future<List<DataModel>> getAllDataAPI() {
    // TODO: implement getAllDataAPI
    throw UnimplementedError();
  }

/*  @override
  Future<DataModel> getDataById(int id) {
    // TODO: implement getDataById
    throw UnimplementedError();
  }
  */
}