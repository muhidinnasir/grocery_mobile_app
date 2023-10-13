// To parse this JSON data, do
//
//     final productMoel = productMoelFromJson(jsonString);

import 'dart:convert';

ProductMoel productMoelFromJson(String str) =>
    ProductMoel.fromJson(json.decode(str));

String productMoelToJson(ProductMoel data) => json.encode(data.toJson());

class ProductMoel {
  bool ok;
  MetaData metaData;
  List<Datum> data;

  ProductMoel({
    required this.ok,
    required this.metaData,
    required this.data,
  });

  factory ProductMoel.fromJson(Map<String, dynamic> json) => ProductMoel(
        ok: json["ok"],
        metaData: MetaData.fromJson(json["meta_data"]),
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "ok": ok,
        "meta_data": metaData.toJson(),
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  dynamic bulkDeals;
  SingleDeal singleDeal;
  GroupDeal groupDeal;
  String shortDescription;
  String longDescription;
  String primaryImage;
  List<String> detailImages;
  List<String> tags;
  String id;
  ProductStatus productStatus;
  String name;
  MeasuringUnit measuringUnit;
  int groupCount;
  String discount;
  bool favorite;
  String vendorId;
  String categoryId;
  DateTime createdAt;
  DateTime updatedAt;

  Datum({
    required this.bulkDeals,
    required this.singleDeal,
    required this.groupDeal,
    required this.shortDescription,
    required this.longDescription,
    required this.primaryImage,
    required this.detailImages,
    required this.tags,
    required this.id,
    required this.productStatus,
    required this.name,
    required this.measuringUnit,
    required this.groupCount,
    required this.discount,
    required this.favorite,
    required this.vendorId,
    required this.categoryId,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        bulkDeals: json["bulk_deals"],
        singleDeal: SingleDeal.fromJson(json["single_deal"]),
        groupDeal: GroupDeal.fromJson(json["group_deal"]),
        shortDescription: json["short_description"],
        longDescription: json["long_description"],
        primaryImage: json["primary_image"],
        detailImages: List<String>.from(json["detail_images"].map((x) => x)),
        tags: List<String>.from(json["tags"].map((x) => x)),
        id: json["id"],
        productStatus: productStatusValues.map[json["product_status"]]!,
        name: json["name"],
        measuringUnit: measuringUnitValues.map[json["measuring_unit"]]!,
        groupCount: json["group_count"],
        discount: json["discount"],
        favorite: json["favorite"],
        vendorId: json["vendor_id"],
        categoryId: json["category_id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "bulk_deals": bulkDeals,
        "single_deal": singleDeal.toJson(),
        "group_deal": groupDeal.toJson(),
        "short_description": shortDescription,
        "long_description": longDescription,
        "primary_image": primaryImage,
        "detail_images": List<dynamic>.from(detailImages.map((x) => x)),
        "tags": List<dynamic>.from(tags.map((x) => x)),
        "id": id,
        "product_status": productStatusValues.reverse[productStatus],
        "name": name,
        "measuring_unit": measuringUnitValues.reverse[measuringUnit],
        "group_count": groupCount,
        "discount": discount,
        "favorite": favorite,
        "vendor_id": vendorId,
        "category_id": categoryId,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}

class GroupDeal {
  String groupPrice;
  int maxGroupMember;
  int expirationTime;
  String id;

  GroupDeal({
    required this.groupPrice,
    required this.maxGroupMember,
    required this.expirationTime,
    required this.id,
  });

  factory GroupDeal.fromJson(Map<String, dynamic> json) => GroupDeal(
        groupPrice: json["group_price"],
        maxGroupMember: json["max_group_member"],
        expirationTime: json["expiration_time"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "group_price": groupPrice,
        "max_group_member": maxGroupMember,
        "expiration_time": expirationTime,
        "id": id,
      };
}

enum MeasuringUnit { GRAM, KILOGRAM }

final measuringUnitValues = EnumValues(
    {"Gram": MeasuringUnit.GRAM, "Kilogram": MeasuringUnit.KILOGRAM});

enum ProductStatus { ACTIVE }

final productStatusValues = EnumValues({"ACTIVE": ProductStatus.ACTIVE});

class SingleDeal {
  String originalPrice;
  int availableQuantity;
  String id;

  SingleDeal({
    required this.originalPrice,
    required this.availableQuantity,
    required this.id,
  });

  factory SingleDeal.fromJson(Map<String, dynamic> json) => SingleDeal(
        originalPrice: json["original_price"],
        availableQuantity: json["available_quantity"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "original_price": originalPrice,
        "available_quantity": availableQuantity,
        "id": id,
      };
}

class MetaData {
  Sort sort;
  int page;
  int perPage;
  List<dynamic> filter;
  String linkOperator;
  int total;

  MetaData({
    required this.sort,
    required this.page,
    required this.perPage,
    required this.filter,
    required this.linkOperator,
    required this.total,
  });

  factory MetaData.fromJson(Map<String, dynamic> json) => MetaData(
        sort: Sort.fromJson(json["sort"]),
        page: json["page"],
        perPage: json["per_page"],
        filter: List<dynamic>.from(json["filter"].map((x) => x)),
        linkOperator: json["linkOperator"],
        total: json["total"],
      );

  Map<String, dynamic> toJson() => {
        "sort": sort.toJson(),
        "page": page,
        "per_page": perPage,
        "filter": List<dynamic>.from(filter.map((x) => x)),
        "linkOperator": linkOperator,
        "total": total,
      };
}

class Sort {
  String field;
  String order;

  Sort({
    required this.field,
    required this.order,
  });

  factory Sort.fromJson(Map<String, dynamic> json) => Sort(
        field: json["field"],
        order: json["order"],
      );

  Map<String, dynamic> toJson() => {
        "field": field,
        "order": order,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
