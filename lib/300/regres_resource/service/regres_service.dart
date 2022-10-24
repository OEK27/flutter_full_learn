/*import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_full_learn/300/regres_resource/model/resources_model.dart';

abstract class IReqresService {
  IReqresService(this.dio);
  final Dio dio;

  Future<ResourcesModel?> fetchResourceItem();
}

enum _ReqResPath { resource }

class ReqresService extends IReqresService {
  ReqresService(super.dio);

  @override
  Future<ResourcesModel?> fetchResourceItem() async {
    final response = await dio.get('/${_ReqResPath.resource.name}');

    if (response.statusCode == HttpStatus.ok) {
      final jsonBody = response.data;
      if (jsonBody is Map<String, dynamic>) {
        return ResourcesModel.fromJson(jsonBody);
      }
    }
    return null;
  }
}
*/