part of 'product_list_bloc.dart';

abstract class ProductListEvent {
  const ProductListEvent();
}

class GetNewProductList extends ProductListEvent {
  final String vendorId;
  const GetNewProductList({required this.vendorId});
}
