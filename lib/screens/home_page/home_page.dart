import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocery_mobile_app_for_interview/bloc/productListBloc/product_list_bloc.dart';
import 'package:grocery_mobile_app_for_interview/repository/product_api_repository.dart';
import 'package:grocery_mobile_app_for_interview/service/postman_service.dart';
import 'package:shimmer/shimmer.dart';

import '../home_page/widgets/gridname_item_widget.dart';
import '../home_page/widgets/listrefresh_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:grocery_mobile_app_for_interview/core/app_export.dart';
import 'package:grocery_mobile_app_for_interview/widgets/app_bar/appbar_image.dart';
import 'package:grocery_mobile_app_for_interview/widgets/app_bar/appbar_title.dart';
import 'package:grocery_mobile_app_for_interview/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatefulWidget {
  const HomePage({Key? key})
      : super(
          key: key,
        );

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final OrdersApiRepository repository = OrdersApiRepository(
    orderApiClient: ApiService(),
  );
  ProductListBloc? _productListBloc;
  @override
  void initState() {
    super.initState();
    _productListBloc = ProductListBloc(repository: repository);
    _productListBloc!.add(GetNewProductList());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgPagebackground,
                height: getVerticalSize(
                  1038,
                ),
                width: getHorizontalSize(
                  374,
                ),
                alignment: Alignment.bottomCenter,
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomAppBar(
                      height: getVerticalSize(
                        55,
                      ),
                      title: Padding(
                        padding: getPadding(
                          left: 10,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: getPadding(
                                  right: 20,
                                  top: 5,
                                ),
                                child: Text(
                                  "Good Morning",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.bodyMediumGray700,
                                ),
                              ),
                            ),
                            AppbarTitle(
                              text: "Rafatul Islam",
                              margin: getMargin(
                                top: 2,
                              ),
                            ),
                          ],
                        ),
                      ),
                      actions: [
                        AppbarImage(
                          height: getVerticalSize(
                            24,
                          ),
                          width: getHorizontalSize(
                            26,
                          ),
                          svgPath: ImageConstant.imgNotification,
                          margin: getMargin(
                            left: 28,
                            top: 22,
                            right: 28,
                            bottom: 6,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: getMargin(
                        top: 17,
                        left: 15,
                        right: 15,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Categories",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles
                                          .titleMediumBlack900SemiBold,
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 30.0),
                                      child: CustomImageView(
                                        svgPath: ImageConstant.imgArrowright,
                                        height: getVerticalSize(
                                          14,
                                        ),
                                        width: getHorizontalSize(
                                          16,
                                        ),
                                        margin: getMargin(
                                          top: 5,
                                          bottom: 7,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: getVerticalSize(
                                    85,
                                  ),
                                  child: ListView.separated(
                                    padding: getPadding(
                                      top: 11,
                                    ),
                                    scrollDirection: Axis.horizontal,
                                    separatorBuilder: (
                                      context,
                                      index,
                                    ) {
                                      return SizedBox(
                                        width: getHorizontalSize(
                                          10,
                                        ),
                                      );
                                    },
                                    itemCount: 4,
                                    itemBuilder: (context, index) {
                                      return ListrefreshItemWidget();
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            child: Stack(
                              alignment: Alignment.topLeft,
                              children: [
                                Container(
                                  width: double.maxFinite,
                                  padding: EdgeInsets.only(top: 13),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0, bottom: 13),
                                            child: Text(
                                              "Latest Products",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .titleMediumBlack900SemiBold,
                                            ),
                                          ),
                                        ),
                                        BlocProvider<ProductListBloc>(
                                          create: (_) => _productListBloc!,
                                          child: BlocListener<ProductListBloc,
                                              ProductListState>(
                                            listener: (context, state) {
                                              if (state is ProductListError) {
                                                Padding(
                                                  padding: getPadding(top: 19),
                                                  child: Text(
                                                    "There are no new orders",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                  ),
                                                );
                                              }
                                            },
                                            child: BlocBuilder<ProductListBloc,
                                                ProductListState>(
                                              builder: (context, state) {
                                                if (state
                                                    is ProductListInitial) {
                                                  return _buildLoading();
                                                } else if (state
                                                    is ProductListLoading) {
                                                  return _buildLoading();
                                                } else if (state
                                                    is ProductListLoaded) {
                                                  return Container(
                                                    height: 400,
                                                    child: GridView.builder(
                                                      scrollDirection:
                                                          Axis.vertical,
                                                      physics:
                                                          BouncingScrollPhysics(),
                                                      gridDelegate:
                                                          SliverGridDelegateWithFixedCrossAxisCount(
                                                        mainAxisExtent:
                                                            getVerticalSize(
                                                          201,
                                                        ),
                                                        crossAxisCount: 2,
                                                        mainAxisSpacing:
                                                            getHorizontalSize(
                                                          20,
                                                        ),
                                                        crossAxisSpacing:
                                                            getHorizontalSize(
                                                          20,
                                                        ),
                                                      ),
                                                      itemCount: state
                                                          .orderModel!
                                                          .data
                                                          .length,
                                                      itemBuilder:
                                                          (context, index) {
                                                        return GridnameItemWidget(
                                                          productMoel:
                                                              state.orderModel,
                                                          index: index,
                                                        );
                                                      },
                                                    ),
                                                  );
                                                } else if (state
                                                    is ProductListError) {
                                                  return Center(
                                                    child: Text(
                                                      "No Data",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                    ),
                                                  );
                                                } else {
                                                  return Container();
                                                }
                                              },
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLoading() {
    return Shimmer.fromColors(
      baseColor: Colors.grey[700]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        height: 400,
        child: GridView.builder(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: getVerticalSize(
              201,
            ),
            crossAxisCount: 2,
            mainAxisSpacing: getHorizontalSize(
              20,
            ),
            crossAxisSpacing: getHorizontalSize(
              20,
            ),
          ),
          itemCount: 8,
          itemBuilder: (context, index) {
            return SizedBox(
              height: getVerticalSize(
                220,
              ),
              width: getHorizontalSize(
                180,
              ),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: getPadding(
                        left: 10,
                        top: 7,
                        right: 10,
                        bottom: 7,
                      ),
                      decoration: AppDecoration.fill1.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder18,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 112,
                            ),
                            child: Text(
                              "",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.titleSmall,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 4,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: theme.textTheme.titleSmall,
                                ),
                                TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Colors.red.shade700,
                                        fontSize: getFontSize(
                                          12,
                                        ),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: SizedBox(
                      height: getVerticalSize(
                        141,
                      ),
                      width: getHorizontalSize(
                        150,
                      ),
                      child: Stack(
                        alignment: Alignment.topLeft,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgRectangle246,
                            height: getVerticalSize(
                              141,
                            ),
                            width: getHorizontalSize(
                              150,
                            ),
                            radius: BorderRadius.only(
                              topLeft: Radius.circular(
                                getHorizontalSize(
                                  18,
                                ),
                              ),
                              topRight: Radius.circular(
                                getHorizontalSize(
                                  18,
                                ),
                              ),
                            ),
                            alignment: Alignment.center,
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgIcwishlistGray400,
                            height: getSize(
                              24,
                            ),
                            width: getSize(
                              24,
                            ),
                            alignment: Alignment.topLeft,
                            margin: getMargin(
                              left: 12,
                              top: 6,
                            ),
                            onTap: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
