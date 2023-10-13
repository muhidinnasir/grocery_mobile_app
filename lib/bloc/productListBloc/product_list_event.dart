part of 'product_list_bloc.dart';

abstract class ProductListEvent {
  const ProductListEvent();
}

class GetNewProductList extends ProductListEvent {
  const GetNewProductList();
}
