import 'base_api.dart';
import 'base_controllers.dart';

const _baseUrl = "https://staging-attendance.holywings.id/api";

class Api extends BaseApi {
  final String _login = '$_baseUrl/login';
  final String _getUserData = '$_baseUrl/user';
  final String _getAttendanceMonth = '$_baseUrl/attendance/data';
  final String _getCarousel = 'https://api.jsonbin.io/b/6152c7974a82881d6c56d30c';
  final String _getTopChart = 'https://api.jsonbin.io/b/6152c7f6aa02be1d445015a4';

  Future<void> login(
    BaseControllers controller, {
    required String username,
    required String password,
  }) async {
    await apiPost(
      url: _login,
      controller: controller,
      data: {
        "username": username,
        "password": password,
      },
      debug: true,
    );
  }

  Future<void> getTopChartData(BaseControllers controllers) => apiFetch(
        url: _getTopChart,
        controller: controllers,
      );

  Future<void> getCarouselData(BaseControllers controllers) => apiFetch(
        url: _getCarousel,
        controller: controllers,
      );

  Future<void> getUserData(BaseControllers controllers) => apiFetch(
        url: _getUserData,
        controller: controllers,
      );

  Future<void> getAttendanceMonth(BaseControllers controllers, {year, month}) => apiFetch(
        url: '$_getAttendanceMonth?year=$year&month=$month',
        controller: controllers,
      );
}
