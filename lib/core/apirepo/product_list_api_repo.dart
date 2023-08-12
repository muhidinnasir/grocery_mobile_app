import 'package:grocery_mobile_app_for_interview/core/apiclient/order_api_client.dart';

class ProductListApiRepository {
  final ProductApiClient orderApiClient;

  ProductListApiRepository({required this.orderApiClient});

  Future<bool> fetchOrders(String sellerId) async {
    return false;
  }
}

class ProductListNetworkError extends Error {}
