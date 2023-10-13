import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocery_mobile_app_for_interview/model/productModel.dart';
import 'package:grocery_mobile_app_for_interview/repository/product_api_repository.dart';

part 'product_list_event.dart';
part 'product_list_state.dart';

class ProductListBloc extends Bloc<ProductListEvent, ProductListState> {
  final OrdersApiRepository repository;
  ProductListBloc({required this.repository}) : super(ProductListInitial()) {
    on<GetNewProductList>((event, emit) async {
      try {
        emit(ProductListLoading());
        final mList = await repository.fetchOrders();
        if (mList == null) {
          emit(const ProductListError(
              "An Error occurred!\nPlease check your internet connection"));
        } else {
          emit(ProductListLoaded(mList));
        }
      } on ProductListError {
        emit(const ProductListError(
            "Failed to fetch data. is your device online?"));
      }
    });
  }
}
