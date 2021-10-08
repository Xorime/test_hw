import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get_storage/get_storage.dart';
import 'package:holywing_test/repositories/api.dart';
import 'package:holywing_test/repositories/constants.dart';

abstract class BaseControllers extends GetxController {
  RxBool loading = false.obs;
  Rx<ControllerState> state = ControllerState.firstLoad.obs;
  final Api api = Get.put(Api());
  final GetStorage store = GetStorage();

  void setLoading(bool loading) {
    isLoading.value = !isLoading.value;
    if (loading) {
      state.value = ControllerState.loading;
    } else {
      state.value = ControllerState.loadingSuccess;
    }
  }

  RxBool get isLoading {
    return loading;
  }

  void load() {
    setLoading(true);
  }

  void loadSuccess({required int requestCode, required Response<dynamic> response}) {
    setLoading(false);
    state.value = ControllerState.loadingSuccess;
  }

  void loadFailed({required int requestCode, required Response<dynamic> response}) {
    setLoading(false);
    state.value = ControllerState.loadingFailed;
  }
}
