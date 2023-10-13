import 'package:grocery_mobile_app_for_interview/model/productModel.dart';
import 'package:grocery_mobile_app_for_interview/service/postman_service.dart';

class OrdersApiRepository {
  final ApiService orderApiClient;

  OrdersApiRepository({required this.orderApiClient});

  Future<ProductMoel?> fetchOrders() async {
    return await orderApiClient.fetchOrder();
  }
}

class OrderNetworkError extends Error {}

class CouponsNetworkError extends Error {}

class VendorSummeryNetworkError extends Error {}
