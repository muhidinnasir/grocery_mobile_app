import 'package:flutter_bloc/flutter_bloc.dart';

part 'product_list_event.dart';
part 'product_list_state.dart';

class ProductListBloc extends Bloc<ProductListEvent, ProductListState> {
  ProductListBloc() : super(ProductListInitial()) {
    on<GetNewProductList>((event, emit) async {
      try {
        // here I call the
      } catch (e) {
        emit(const ProductListError(
            "Failed to fetch data. is your device online?"));
      }
    });
  }
}
