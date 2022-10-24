 /* import 'package:flutter_full_learn/200/cache/shared_learn_cache.dart';
import 'package:flutter_full_learn/300/regres_resource/model/resources_model.dart';
import 'package:flutter_full_learn/300/regres_resource/service/regres_service.dart';
import 'package:flutter_full_learn/300/regres_resource/view/req_res_view.dart';
import 'package:flutter_full_learn/product/service/project_dio.dart';
import 'package:flutter_full_learn/product/service/project_network_manager.dart';

abstract class ReqresViewModel extends LoadingStatefull<ReqResView> with ProjectDioMixin {
  late final IReqresService reqresService;

  List<Data> resources = [];

  @override
  void initState() {
    super.initState();
    reqresService = ReqresService(ProjectNetworkManager.instance.service);
    ProjectNetworkManager.instance.addBaseHeaderToToken('veli');
    _fetch();
  }

  Future<void> _fetch() async {
    changeLoading();
    resources = (await reqresService.fetchResourceItem())?.data ?? [];
    changeLoading();
  }
}
*/