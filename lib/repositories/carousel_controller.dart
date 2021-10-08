import 'package:get/get.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:holywing_test/models/carousel_model.dart';
import 'package:holywing_test/repositories/base_controllers.dart';

class CarouselController2 extends BaseControllers {
  RxList<Data> arrData = RxList();
  @override
  void load() {
    super.load();
    api.getCarouselData(this);
  }

  @override
  void loadSuccess({required int requestCode, required Response<dynamic> response}) {
    super.loadSuccess(requestCode: requestCode, response: response);
    arrData.clear();
    // for (Map<String, dynamic> item in response.body['data']) {
    //   arrData.add(CarouselModel.fromJson(item));
    // }

    CarouselModel model = CarouselModel.fromJson(response.body);
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
