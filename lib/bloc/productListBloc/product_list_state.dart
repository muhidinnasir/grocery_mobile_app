part of 'product_list_bloc.dart';

abstract class ProductListState {
  const ProductListState();
}

class ProductListInitial extends ProductListState {}

class ProductListLoading extends ProductListState {}

class ProductListLoaded extends ProductListState {
  final ProductMoel? orderModel;
  const ProductListLoaded(this.orderModel);
}

class ProductListError extends ProductListState {
  final String? message;
  const ProductListError(this.message);
}
