/*import 'package:flutter/material.dart';
import 'package:flutter_full_learn/200/image_learn_202.dart';
import 'package:flutter_full_learn/300/regres_resource/service/regres_service.dart';
import 'package:flutter_full_learn/300/regres_resource/view_model/req_res_provider.dart';
import 'package:flutter_full_learn/product/extension/string_extension.dart';
import 'package:flutter_full_learn/product/global/resource_context.dart';
import 'package:flutter_full_learn/product/global/theme_notfier.dart';
import 'package:flutter_full_learn/product/service/project_dio.dart';
import 'package:provider/provider.dart';

import '../model/resources_model.dart';

class ReqResView extends StatefulWidget {
  const ReqResView({Key? key}) : super(key: key);

  @override
  State<ReqResView> createState() => _ReqResViewState();
}

//  class _ReqResViewState extends ReqresViewModel {
class _ReqResViewState extends State<ReqResView> with ProjectDioMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ReqResProvider>(
        create: (context) => ReqResProvider(ReqresService(service)),
        builder: (context, child) {
          return Scaffold(
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                context.read<ThemeNotifier>().changeTheme();
              },
            ),
            appBar: AppBar(
                actions: const [_SaveAndNavigate()],
                title: context.watch<ReqResProvider>().isLoading
                    ? const CircularProgressIndicator(
                        backgroundColor: Colors.green,
                      )
                    : null),
            body: Column(
              children: [
                const _TempPlaceHodler(),
                Expanded(child: _resourceListview(context, context.watch<ReqResProvider>().resources)),
              ],
            ),
          );
        });
  }

  ListView _resourceListview(BuildContext context, List<Data> items) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(color: Color(items[index].color?.colorValue ?? 0), child: Text(items[index].name ?? ''));
      },
    );
  }
}

class _SaveAndNavigate extends StatelessWidget {
  const _SaveAndNavigate({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          context.read<ReqResProvider>().saveToLocale(context.read<ResourceContext>());
          Navigator.of(context).push(MaterialPageRoute(
            builder: (_) {
              return const ImageLearn202();
            },
          ));
        },
        child: const Icon(Icons.ac_unit));
  }
}

class _TempPlaceHodler extends StatelessWidget {
  const _TempPlaceHodler({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Selector<ReqResProvider, bool>(builder: (context, value, child) {
      return value ? const Placeholder() : const Text('data');
    }, selector: (context, provider) {
      return provider.isLoading;
    });
  }
}
*/