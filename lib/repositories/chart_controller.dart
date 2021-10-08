import 'package:get/get.dart';
import 'package:holywing_test/models/chart_model.dart';
import 'package:holywing_test/repositories/base_controllers.dart';

class ChartController extends BaseControllers {
  RxList<Data> arrData = RxList();

  @override
  void load() {
    super.load();
    api.getTopChartData(this);
  }

  @override
  void loadSuccess({required int requestCode, required Response<dynamic> response}) {
    super.loadSuccess(requestCode: requestCode, response: response);
    arrData.clear();

    ChartModel model = ChartModel.fromJson(response.body);
    arrData.clear();
    arrData.addAll(model.data);
    print(arrData.length);
  }

  @override
  void onInit() {
    super.onInit();
    load();
  }
}
