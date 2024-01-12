// ignore_for_file: invalid_use_of_internal_member

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:json_annotation/json_annotation.dart';
import 'package:orm/binary_engine.dart' as _i5;
import 'package:orm/engine_core.dart' as _i3;
import 'package:orm/graphql.dart' as _i2;
import 'package:orm/logger.dart' as _i4;
import 'package:orm/orm.dart' as _i1;
import 'package:orm/orm.dart' show DateTimeJsonConverter;

part 'prisma_client.g.dart';

enum UserScalarFieldEnum implements _i1.PrismaEnum {
  id,
  username,
  email,
  password;

  @override
  String? get originalName => null;
}

enum ProductScalarFieldEnum implements _i1.PrismaEnum {
  id,
  name,
  description,
  @JsonValue('img_url')
  imgUrl(r'img_url'),
  price;

  const ProductScalarFieldEnum([this.originalName]);

  @override
  final String? originalName;
}

enum ProductCommentScalarFieldEnum implements _i1.PrismaEnum {
  id,
  productId,
  username,
  ratings,
  email,
  comment,
  created;

  @override
  String? get originalName => null;
}

enum CustomerOrderScalarFieldEnum implements _i1.PrismaEnum {
  id,
  @JsonValue('customer_name')
  customerName(r'customer_name'),
  status,
  totalPrice,
  created;

  const CustomerOrderScalarFieldEnum([this.originalName]);

  @override
  final String? originalName;
}

enum AddressScalarFieldEnum implements _i1.PrismaEnum {
  street,
  district,
  number,
  city,
  @JsonValue('customer_order_id')
  customerOrderId(r'customer_order_id');

  const AddressScalarFieldEnum([this.originalName]);

  @override
  final String? originalName;
}

enum OrderItemsScalarFieldEnum implements _i1.PrismaEnum {
  @JsonValue('customer_order_id')
  customerOrderId(r'customer_order_id'),
  amount,
  price;

  const OrderItemsScalarFieldEnum([this.originalName]);

  @override
  final String? originalName;
}

enum SortOrder implements _i1.PrismaEnum {
  asc,
  desc;

  @override
  String? get originalName => null;
}

enum QueryMode implements _i1.PrismaEnum {
  @JsonValue('default')
  $default(r'default'),
  insensitive;

  const QueryMode([this.originalName]);

  @override
  final String? originalName;
}

@_i1.jsonSerializable
class UserWhereInput implements _i1.JsonSerializable {
  const UserWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.username,
    this.email,
    this.password,
  });

  factory UserWhereInput.fromJson(Map<String, dynamic> json) =>
      _$UserWhereInputFromJson(json);

  final Iterable<UserWhereInput>? AND;

  final Iterable<UserWhereInput>? OR;

  final Iterable<UserWhereInput>? NOT;

  final UuidFilter? id;

  final StringFilter? username;

  final StringFilter? email;

  final StringFilter? password;

  @override
  Map<String, dynamic> toJson() => _$UserWhereInputToJson(this);
}

@_i1.jsonSerializable
class UserOrderByWithRelationInput implements _i1.JsonSerializable {
  const UserOrderByWithRelationInput({
    this.id,
    this.username,
    this.email,
    this.password,
  });

  factory UserOrderByWithRelationInput.fromJson(Map<String, dynamic> json) =>
      _$UserOrderByWithRelationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? username;

  final SortOrder? email;

  final SortOrder? password;

  @override
  Map<String, dynamic> toJson() => _$UserOrderByWithRelationInputToJson(this);
}

@_i1.jsonSerializable
class UserWhereUniqueInput implements _i1.JsonSerializable {
  const UserWhereUniqueInput({
    this.id,
    this.email,
    this.AND,
    this.OR,
    this.NOT,
    this.username,
    this.password,
  });

  factory UserWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$UserWhereUniqueInputFromJson(json);

  final String? id;

  final String? email;

  final Iterable<UserWhereInput>? AND;

  final Iterable<UserWhereInput>? OR;

  final Iterable<UserWhereInput>? NOT;

  final StringFilter? username;

  final StringFilter? password;

  @override
  Map<String, dynamic> toJson() => _$UserWhereUniqueInputToJson(this);
}

@_i1.jsonSerializable
class UserOrderByWithAggregationInput implements _i1.JsonSerializable {
  const UserOrderByWithAggregationInput({
    this.id,
    this.username,
    this.email,
    this.password,
    this.$count,
    this.$max,
    this.$min,
  });

  factory UserOrderByWithAggregationInput.fromJson(Map<String, dynamic> json) =>
      _$UserOrderByWithAggregationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? username;

  final SortOrder? email;

  final SortOrder? password;

  @JsonKey(name: r'_count')
  final UserCountOrderByAggregateInput? $count;

  @JsonKey(name: r'_max')
  final UserMaxOrderByAggregateInput? $max;

  @JsonKey(name: r'_min')
  final UserMinOrderByAggregateInput? $min;

  @override
  Map<String, dynamic> toJson() =>
      _$UserOrderByWithAggregationInputToJson(this);
}

@_i1.jsonSerializable
class UserScalarWhereWithAggregatesInput implements _i1.JsonSerializable {
  const UserScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.username,
    this.email,
    this.password,
  });

  factory UserScalarWhereWithAggregatesInput.fromJson(
          Map<String, dynamic> json) =>
      _$UserScalarWhereWithAggregatesInputFromJson(json);

  final Iterable<UserScalarWhereWithAggregatesInput>? AND;

  final Iterable<UserScalarWhereWithAggregatesInput>? OR;

  final Iterable<UserScalarWhereWithAggregatesInput>? NOT;

  final UuidWithAggregatesFilter? id;

  final StringWithAggregatesFilter? username;

  final StringWithAggregatesFilter? email;

  final StringWithAggregatesFilter? password;

  @override
  Map<String, dynamic> toJson() =>
      _$UserScalarWhereWithAggregatesInputToJson(this);
}

@_i1.jsonSerializable
class ProductWhereInput implements _i1.JsonSerializable {
  const ProductWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.name,
    this.description,
    this.imgUrl,
    this.price,
    this.productComments,
  });

  factory ProductWhereInput.fromJson(Map<String, dynamic> json) =>
      _$ProductWhereInputFromJson(json);

  final Iterable<ProductWhereInput>? AND;

  final Iterable<ProductWhereInput>? OR;

  final Iterable<ProductWhereInput>? NOT;

  final UuidFilter? id;

  final StringFilter? name;

  final StringFilter? description;

  @JsonKey(name: r'img_url')
  final StringFilter? imgUrl;

  final IntFilter? price;

  @JsonKey(name: r'product_comments')
  final ProductCommentListRelationFilter? productComments;

  @override
  Map<String, dynamic> toJson() => _$ProductWhereInputToJson(this);
}

@_i1.jsonSerializable
class ProductOrderByWithRelationInput implements _i1.JsonSerializable {
  const ProductOrderByWithRelationInput({
    this.id,
    this.name,
    this.description,
    this.imgUrl,
    this.price,
    this.productComments,
  });

  factory ProductOrderByWithRelationInput.fromJson(Map<String, dynamic> json) =>
      _$ProductOrderByWithRelationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? name;

  final SortOrder? description;

  @JsonKey(name: r'img_url')
  final SortOrder? imgUrl;

  final SortOrder? price;

  @JsonKey(name: r'product_comments')
  final ProductCommentOrderByRelationAggregateInput? productComments;

  @override
  Map<String, dynamic> toJson() =>
      _$ProductOrderByWithRelationInputToJson(this);
}

@_i1.jsonSerializable
class ProductWhereUniqueInput implements _i1.JsonSerializable {
  const ProductWhereUniqueInput({
    this.id,
    this.AND,
    this.OR,
    this.NOT,
    this.name,
    this.description,
    this.imgUrl,
    this.price,
    this.productComments,
  });

  factory ProductWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$ProductWhereUniqueInputFromJson(json);

  final String? id;

  final Iterable<ProductWhereInput>? AND;

  final Iterable<ProductWhereInput>? OR;

  final Iterable<ProductWhereInput>? NOT;

  final StringFilter? name;

  final StringFilter? description;

  @JsonKey(name: r'img_url')
  final StringFilter? imgUrl;

  final IntFilter? price;

  @JsonKey(name: r'product_comments')
  final ProductCommentListRelationFilter? productComments;

  @override
  Map<String, dynamic> toJson() => _$ProductWhereUniqueInputToJson(this);
}

@_i1.jsonSerializable
class ProductOrderByWithAggregationInput implements _i1.JsonSerializable {
  const ProductOrderByWithAggregationInput({
    this.id,
    this.name,
    this.description,
    this.imgUrl,
    this.price,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  factory ProductOrderByWithAggregationInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProductOrderByWithAggregationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? name;

  final SortOrder? description;

  @JsonKey(name: r'img_url')
  final SortOrder? imgUrl;

  final SortOrder? price;

  @JsonKey(name: r'_count')
  final ProductCountOrderByAggregateInput? $count;

  @JsonKey(name: r'_avg')
  final ProductAvgOrderByAggregateInput? $avg;

  @JsonKey(name: r'_max')
  final ProductMaxOrderByAggregateInput? $max;

  @JsonKey(name: r'_min')
  final ProductMinOrderByAggregateInput? $min;

  @JsonKey(name: r'_sum')
  final ProductSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() =>
      _$ProductOrderByWithAggregationInputToJson(this);
}

@_i1.jsonSerializable
class ProductScalarWhereWithAggregatesInput implements _i1.JsonSerializable {
  const ProductScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.name,
    this.description,
    this.imgUrl,
    this.price,
  });

  factory ProductScalarWhereWithAggregatesInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProductScalarWhereWithAggregatesInputFromJson(json);

  final Iterable<ProductScalarWhereWithAggregatesInput>? AND;

  final Iterable<ProductScalarWhereWithAggregatesInput>? OR;

  final Iterable<ProductScalarWhereWithAggregatesInput>? NOT;

  final UuidWithAggregatesFilter? id;

  final StringWithAggregatesFilter? name;

  final StringWithAggregatesFilter? description;

  @JsonKey(name: r'img_url')
  final StringWithAggregatesFilter? imgUrl;

  final IntWithAggregatesFilter? price;

  @override
  Map<String, dynamic> toJson() =>
      _$ProductScalarWhereWithAggregatesInputToJson(this);
}

@_i1.jsonSerializable
class ProductCommentWhereInput implements _i1.JsonSerializable {
  const ProductCommentWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.productId,
    this.username,
    this.ratings,
    this.email,
    this.comment,
    this.created,
    this.product,
  });

  factory ProductCommentWhereInput.fromJson(Map<String, dynamic> json) =>
      _$ProductCommentWhereInputFromJson(json);

  final Iterable<ProductCommentWhereInput>? AND;

  final Iterable<ProductCommentWhereInput>? OR;

  final Iterable<ProductCommentWhereInput>? NOT;

  final UuidFilter? id;

  final UuidFilter? productId;

  final StringFilter? username;

  final FloatFilter? ratings;

  final StringFilter? email;

  final StringFilter? comment;

  final DateTimeFilter? created;

  final ProductRelationFilter? product;

  @override
  Map<String, dynamic> toJson() => _$ProductCommentWhereInputToJson(this);
}

@_i1.jsonSerializable
class ProductCommentOrderByWithRelationInput implements _i1.JsonSerializable {
  const ProductCommentOrderByWithRelationInput({
    this.id,
    this.productId,
    this.username,
    this.ratings,
    this.email,
    this.comment,
    this.created,
    this.product,
  });

  factory ProductCommentOrderByWithRelationInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProductCommentOrderByWithRelationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? productId;

  final SortOrder? username;

  final SortOrder? ratings;

  final SortOrder? email;

  final SortOrder? comment;

  final SortOrder? created;

  final ProductOrderByWithRelationInput? product;

  @override
  Map<String, dynamic> toJson() =>
      _$ProductCommentOrderByWithRelationInputToJson(this);
}

@_i1.jsonSerializable
class ProductCommentWhereUniqueInput implements _i1.JsonSerializable {
  const ProductCommentWhereUniqueInput({
    this.id,
    this.email,
    this.AND,
    this.OR,
    this.NOT,
    this.productId,
    this.username,
    this.ratings,
    this.comment,
    this.created,
    this.product,
  });

  factory ProductCommentWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$ProductCommentWhereUniqueInputFromJson(json);

  final String? id;

  final String? email;

  final Iterable<ProductCommentWhereInput>? AND;

  final Iterable<ProductCommentWhereInput>? OR;

  final Iterable<ProductCommentWhereInput>? NOT;

  final UuidFilter? productId;

  final StringFilter? username;

  final FloatFilter? ratings;

  final StringFilter? comment;

  final DateTimeFilter? created;

  final ProductRelationFilter? product;

  @override
  Map<String, dynamic> toJson() => _$ProductCommentWhereUniqueInputToJson(this);
}

@_i1.jsonSerializable
class ProductCommentOrderByWithAggregationInput
    implements _i1.JsonSerializable {
  const ProductCommentOrderByWithAggregationInput({
    this.id,
    this.productId,
    this.username,
    this.ratings,
    this.email,
    this.comment,
    this.created,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  factory ProductCommentOrderByWithAggregationInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProductCommentOrderByWithAggregationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? productId;

  final SortOrder? username;

  final SortOrder? ratings;

  final SortOrder? email;

  final SortOrder? comment;

  final SortOrder? created;

  @JsonKey(name: r'_count')
  final ProductCommentCountOrderByAggregateInput? $count;

  @JsonKey(name: r'_avg')
  final ProductCommentAvgOrderByAggregateInput? $avg;

  @JsonKey(name: r'_max')
  final ProductCommentMaxOrderByAggregateInput? $max;

  @JsonKey(name: r'_min')
  final ProductCommentMinOrderByAggregateInput? $min;

  @JsonKey(name: r'_sum')
  final ProductCommentSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() =>
      _$ProductCommentOrderByWithAggregationInputToJson(this);
}

@_i1.jsonSerializable
class ProductCommentScalarWhereWithAggregatesInput
    implements _i1.JsonSerializable {
  const ProductCommentScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.productId,
    this.username,
    this.ratings,
    this.email,
    this.comment,
    this.created,
  });

  factory ProductCommentScalarWhereWithAggregatesInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProductCommentScalarWhereWithAggregatesInputFromJson(json);

  final Iterable<ProductCommentScalarWhereWithAggregatesInput>? AND;

  final Iterable<ProductCommentScalarWhereWithAggregatesInput>? OR;

  final Iterable<ProductCommentScalarWhereWithAggregatesInput>? NOT;

  final UuidWithAggregatesFilter? id;

  final UuidWithAggregatesFilter? productId;

  final StringWithAggregatesFilter? username;

  final FloatWithAggregatesFilter? ratings;

  final StringWithAggregatesFilter? email;

  final StringWithAggregatesFilter? comment;

  final DateTimeWithAggregatesFilter? created;

  @override
  Map<String, dynamic> toJson() =>
      _$ProductCommentScalarWhereWithAggregatesInputToJson(this);
}

@_i1.jsonSerializable
class CustomerOrderWhereInput implements _i1.JsonSerializable {
  const CustomerOrderWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.customerName,
    this.status,
    this.totalPrice,
    this.created,
    this.address,
    this.orderItems,
  });

  factory CustomerOrderWhereInput.fromJson(Map<String, dynamic> json) =>
      _$CustomerOrderWhereInputFromJson(json);

  final Iterable<CustomerOrderWhereInput>? AND;

  final Iterable<CustomerOrderWhereInput>? OR;

  final Iterable<CustomerOrderWhereInput>? NOT;

  final IntFilter? id;

  @JsonKey(name: r'customer_name')
  final StringFilter? customerName;

  final StringFilter? status;

  final IntFilter? totalPrice;

  final DateTimeFilter? created;

  final AddressListRelationFilter? address;

  final OrderItemsListRelationFilter? orderItems;

  @override
  Map<String, dynamic> toJson() => _$CustomerOrderWhereInputToJson(this);
}

@_i1.jsonSerializable
class CustomerOrderOrderByWithRelationInput implements _i1.JsonSerializable {
  const CustomerOrderOrderByWithRelationInput({
    this.id,
    this.customerName,
    this.status,
    this.totalPrice,
    this.created,
    this.address,
    this.orderItems,
  });

  factory CustomerOrderOrderByWithRelationInput.fromJson(
          Map<String, dynamic> json) =>
      _$CustomerOrderOrderByWithRelationInputFromJson(json);

  final SortOrder? id;

  @JsonKey(name: r'customer_name')
  final SortOrder? customerName;

  final SortOrder? status;

  final SortOrder? totalPrice;

  final SortOrder? created;

  final AddressOrderByRelationAggregateInput? address;

  final OrderItemsOrderByRelationAggregateInput? orderItems;

  @override
  Map<String, dynamic> toJson() =>
      _$CustomerOrderOrderByWithRelationInputToJson(this);
}

@_i1.jsonSerializable
class CustomerOrderWhereUniqueInput implements _i1.JsonSerializable {
  const CustomerOrderWhereUniqueInput({
    this.id,
    this.AND,
    this.OR,
    this.NOT,
    this.customerName,
    this.status,
    this.totalPrice,
    this.created,
    this.address,
    this.orderItems,
  });

  factory CustomerOrderWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$CustomerOrderWhereUniqueInputFromJson(json);

  final int? id;

  final Iterable<CustomerOrderWhereInput>? AND;

  final Iterable<CustomerOrderWhereInput>? OR;

  final Iterable<CustomerOrderWhereInput>? NOT;

  @JsonKey(name: r'customer_name')
  final StringFilter? customerName;

  final StringFilter? status;

  final IntFilter? totalPrice;

  final DateTimeFilter? created;

  final AddressListRelationFilter? address;

  final OrderItemsListRelationFilter? orderItems;

  @override
  Map<String, dynamic> toJson() => _$CustomerOrderWhereUniqueInputToJson(this);
}

@_i1.jsonSerializable
class CustomerOrderOrderByWithAggregationInput implements _i1.JsonSerializable {
  const CustomerOrderOrderByWithAggregationInput({
    this.id,
    this.customerName,
    this.status,
    this.totalPrice,
    this.created,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  factory CustomerOrderOrderByWithAggregationInput.fromJson(
          Map<String, dynamic> json) =>
      _$CustomerOrderOrderByWithAggregationInputFromJson(json);

  final SortOrder? id;

  @JsonKey(name: r'customer_name')
  final SortOrder? customerName;

  final SortOrder? status;

  final SortOrder? totalPrice;

  final SortOrder? created;

  @JsonKey(name: r'_count')
  final CustomerOrderCountOrderByAggregateInput? $count;

  @JsonKey(name: r'_avg')
  final CustomerOrderAvgOrderByAggregateInput? $avg;

  @JsonKey(name: r'_max')
  final CustomerOrderMaxOrderByAggregateInput? $max;

  @JsonKey(name: r'_min')
  final CustomerOrderMinOrderByAggregateInput? $min;

  @JsonKey(name: r'_sum')
  final CustomerOrderSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() =>
      _$CustomerOrderOrderByWithAggregationInputToJson(this);
}

@_i1.jsonSerializable
class CustomerOrderScalarWhereWithAggregatesInput
    implements _i1.JsonSerializable {
  const CustomerOrderScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.customerName,
    this.status,
    this.totalPrice,
    this.created,
  });

  factory CustomerOrderScalarWhereWithAggregatesInput.fromJson(
          Map<String, dynamic> json) =>
      _$CustomerOrderScalarWhereWithAggregatesInputFromJson(json);

  final Iterable<CustomerOrderScalarWhereWithAggregatesInput>? AND;

  final Iterable<CustomerOrderScalarWhereWithAggregatesInput>? OR;

  final Iterable<CustomerOrderScalarWhereWithAggregatesInput>? NOT;

  final IntWithAggregatesFilter? id;

  @JsonKey(name: r'customer_name')
  final StringWithAggregatesFilter? customerName;

  final StringWithAggregatesFilter? status;

  final IntWithAggregatesFilter? totalPrice;

  final DateTimeWithAggregatesFilter? created;

  @override
  Map<String, dynamic> toJson() =>
      _$CustomerOrderScalarWhereWithAggregatesInputToJson(this);
}

@_i1.jsonSerializable
class AddressWhereInput implements _i1.JsonSerializable {
  const AddressWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.street,
    this.district,
    this.number,
    this.city,
    this.customerOrderId,
    this.customerOrder,
  });

  factory AddressWhereInput.fromJson(Map<String, dynamic> json) =>
      _$AddressWhereInputFromJson(json);

  final Iterable<AddressWhereInput>? AND;

  final Iterable<AddressWhereInput>? OR;

  final Iterable<AddressWhereInput>? NOT;

  final StringFilter? street;

  final StringFilter? district;

  final IntFilter? number;

  final StringFilter? city;

  @JsonKey(name: r'customer_order_id')
  final IntFilter? customerOrderId;

  @JsonKey(name: r'customer_order')
  final CustomerOrderRelationFilter? customerOrder;

  @override
  Map<String, dynamic> toJson() => _$AddressWhereInputToJson(this);
}

@_i1.jsonSerializable
class AddressOrderByWithRelationInput implements _i1.JsonSerializable {
  const AddressOrderByWithRelationInput({
    this.street,
    this.district,
    this.number,
    this.city,
    this.customerOrderId,
    this.customerOrder,
  });

  factory AddressOrderByWithRelationInput.fromJson(Map<String, dynamic> json) =>
      _$AddressOrderByWithRelationInputFromJson(json);

  final SortOrder? street;

  final SortOrder? district;

  final SortOrder? number;

  final SortOrder? city;

  @JsonKey(name: r'customer_order_id')
  final SortOrder? customerOrderId;

  @JsonKey(name: r'customer_order')
  final CustomerOrderOrderByWithRelationInput? customerOrder;

  @override
  Map<String, dynamic> toJson() =>
      _$AddressOrderByWithRelationInputToJson(this);
}

@_i1.jsonSerializable
class AddressWhereUniqueInput implements _i1.JsonSerializable {
  const AddressWhereUniqueInput({
    this.customerOrderId,
    this.AND,
    this.OR,
    this.NOT,
    this.street,
    this.district,
    this.number,
    this.city,
    this.customerOrder,
  });

  factory AddressWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$AddressWhereUniqueInputFromJson(json);

  @JsonKey(name: r'customer_order_id')
  final int? customerOrderId;

  final Iterable<AddressWhereInput>? AND;

  final Iterable<AddressWhereInput>? OR;

  final Iterable<AddressWhereInput>? NOT;

  final StringFilter? street;

  final StringFilter? district;

  final IntFilter? number;

  final StringFilter? city;

  @JsonKey(name: r'customer_order')
  final CustomerOrderRelationFilter? customerOrder;

  @override
  Map<String, dynamic> toJson() => _$AddressWhereUniqueInputToJson(this);
}

@_i1.jsonSerializable
class AddressOrderByWithAggregationInput implements _i1.JsonSerializable {
  const AddressOrderByWithAggregationInput({
    this.street,
    this.district,
    this.number,
    this.city,
    this.customerOrderId,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  factory AddressOrderByWithAggregationInput.fromJson(
          Map<String, dynamic> json) =>
      _$AddressOrderByWithAggregationInputFromJson(json);

  final SortOrder? street;

  final SortOrder? district;

  final SortOrder? number;

  final SortOrder? city;

  @JsonKey(name: r'customer_order_id')
  final SortOrder? customerOrderId;

  @JsonKey(name: r'_count')
  final AddressCountOrderByAggregateInput? $count;

  @JsonKey(name: r'_avg')
  final AddressAvgOrderByAggregateInput? $avg;

  @JsonKey(name: r'_max')
  final AddressMaxOrderByAggregateInput? $max;

  @JsonKey(name: r'_min')
  final AddressMinOrderByAggregateInput? $min;

  @JsonKey(name: r'_sum')
  final AddressSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() =>
      _$AddressOrderByWithAggregationInputToJson(this);
}

@_i1.jsonSerializable
class AddressScalarWhereWithAggregatesInput implements _i1.JsonSerializable {
  const AddressScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.street,
    this.district,
    this.number,
    this.city,
    this.customerOrderId,
  });

  factory AddressScalarWhereWithAggregatesInput.fromJson(
          Map<String, dynamic> json) =>
      _$AddressScalarWhereWithAggregatesInputFromJson(json);

  final Iterable<AddressScalarWhereWithAggregatesInput>? AND;

  final Iterable<AddressScalarWhereWithAggregatesInput>? OR;

  final Iterable<AddressScalarWhereWithAggregatesInput>? NOT;

  final StringWithAggregatesFilter? street;

  final StringWithAggregatesFilter? district;

  final IntWithAggregatesFilter? number;

  final StringWithAggregatesFilter? city;

  @JsonKey(name: r'customer_order_id')
  final IntWithAggregatesFilter? customerOrderId;

  @override
  Map<String, dynamic> toJson() =>
      _$AddressScalarWhereWithAggregatesInputToJson(this);
}

@_i1.jsonSerializable
class OrderItemsWhereInput implements _i1.JsonSerializable {
  const OrderItemsWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.customerOrderId,
    this.amount,
    this.price,
    this.customerOrder,
  });

  factory OrderItemsWhereInput.fromJson(Map<String, dynamic> json) =>
      _$OrderItemsWhereInputFromJson(json);

  final Iterable<OrderItemsWhereInput>? AND;

  final Iterable<OrderItemsWhereInput>? OR;

  final Iterable<OrderItemsWhereInput>? NOT;

  @JsonKey(name: r'customer_order_id')
  final IntFilter? customerOrderId;

  final IntFilter? amount;

  final IntFilter? price;

  final CustomerOrderRelationFilter? customerOrder;

  @override
  Map<String, dynamic> toJson() => _$OrderItemsWhereInputToJson(this);
}

@_i1.jsonSerializable
class OrderItemsOrderByWithRelationInput implements _i1.JsonSerializable {
  const OrderItemsOrderByWithRelationInput({
    this.customerOrderId,
    this.amount,
    this.price,
    this.customerOrder,
  });

  factory OrderItemsOrderByWithRelationInput.fromJson(
          Map<String, dynamic> json) =>
      _$OrderItemsOrderByWithRelationInputFromJson(json);

  @JsonKey(name: r'customer_order_id')
  final SortOrder? customerOrderId;

  final SortOrder? amount;

  final SortOrder? price;

  final CustomerOrderOrderByWithRelationInput? customerOrder;

  @override
  Map<String, dynamic> toJson() =>
      _$OrderItemsOrderByWithRelationInputToJson(this);
}

@_i1.jsonSerializable
class OrderItemsWhereUniqueInput implements _i1.JsonSerializable {
  const OrderItemsWhereUniqueInput({
    this.customerOrderId,
    this.AND,
    this.OR,
    this.NOT,
    this.amount,
    this.price,
    this.customerOrder,
  });

  factory OrderItemsWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$OrderItemsWhereUniqueInputFromJson(json);

  @JsonKey(name: r'customer_order_id')
  final int? customerOrderId;

  final Iterable<OrderItemsWhereInput>? AND;

  final Iterable<OrderItemsWhereInput>? OR;

  final Iterable<OrderItemsWhereInput>? NOT;

  final IntFilter? amount;

  final IntFilter? price;

  final CustomerOrderRelationFilter? customerOrder;

  @override
  Map<String, dynamic> toJson() => _$OrderItemsWhereUniqueInputToJson(this);
}

@_i1.jsonSerializable
class OrderItemsOrderByWithAggregationInput implements _i1.JsonSerializable {
  const OrderItemsOrderByWithAggregationInput({
    this.customerOrderId,
    this.amount,
    this.price,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  factory OrderItemsOrderByWithAggregationInput.fromJson(
          Map<String, dynamic> json) =>
      _$OrderItemsOrderByWithAggregationInputFromJson(json);

  @JsonKey(name: r'customer_order_id')
  final SortOrder? customerOrderId;

  final SortOrder? amount;

  final SortOrder? price;

  @JsonKey(name: r'_count')
  final OrderItemsCountOrderByAggregateInput? $count;

  @JsonKey(name: r'_avg')
  final OrderItemsAvgOrderByAggregateInput? $avg;

  @JsonKey(name: r'_max')
  final OrderItemsMaxOrderByAggregateInput? $max;

  @JsonKey(name: r'_min')
  final OrderItemsMinOrderByAggregateInput? $min;

  @JsonKey(name: r'_sum')
  final OrderItemsSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() =>
      _$OrderItemsOrderByWithAggregationInputToJson(this);
}

@_i1.jsonSerializable
class OrderItemsScalarWhereWithAggregatesInput implements _i1.JsonSerializable {
  const OrderItemsScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.customerOrderId,
    this.amount,
    this.price,
  });

  factory OrderItemsScalarWhereWithAggregatesInput.fromJson(
          Map<String, dynamic> json) =>
      _$OrderItemsScalarWhereWithAggregatesInputFromJson(json);

  final Iterable<OrderItemsScalarWhereWithAggregatesInput>? AND;

  final Iterable<OrderItemsScalarWhereWithAggregatesInput>? OR;

  final Iterable<OrderItemsScalarWhereWithAggregatesInput>? NOT;

  @JsonKey(name: r'customer_order_id')
  final IntWithAggregatesFilter? customerOrderId;

  final IntWithAggregatesFilter? amount;

  final IntWithAggregatesFilter? price;

  @override
  Map<String, dynamic> toJson() =>
      _$OrderItemsScalarWhereWithAggregatesInputToJson(this);
}

@_i1.jsonSerializable
class UserCreateInput implements _i1.JsonSerializable {
  const UserCreateInput({
    this.id,
    required this.username,
    required this.email,
    required this.password,
  });

  factory UserCreateInput.fromJson(Map<String, dynamic> json) =>
      _$UserCreateInputFromJson(json);

  final String? id;

  final String username;

  final String email;

  final String password;

  @override
  Map<String, dynamic> toJson() => _$UserCreateInputToJson(this);
}

@_i1.jsonSerializable
class UserUncheckedCreateInput implements _i1.JsonSerializable {
  const UserUncheckedCreateInput({
    this.id,
    required this.username,
    required this.email,
    required this.password,
  });

  factory UserUncheckedCreateInput.fromJson(Map<String, dynamic> json) =>
      _$UserUncheckedCreateInputFromJson(json);

  final String? id;

  final String username;

  final String email;

  final String password;

  @override
  Map<String, dynamic> toJson() => _$UserUncheckedCreateInputToJson(this);
}

@_i1.jsonSerializable
class UserUpdateInput implements _i1.JsonSerializable {
  const UserUpdateInput({
    this.id,
    this.username,
    this.email,
    this.password,
  });

  factory UserUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$UserUpdateInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? username;

  final StringFieldUpdateOperationsInput? email;

  final StringFieldUpdateOperationsInput? password;

  @override
  Map<String, dynamic> toJson() => _$UserUpdateInputToJson(this);
}

@_i1.jsonSerializable
class UserUncheckedUpdateInput implements _i1.JsonSerializable {
  const UserUncheckedUpdateInput({
    this.id,
    this.username,
    this.email,
    this.password,
  });

  factory UserUncheckedUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$UserUncheckedUpdateInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? username;

  final StringFieldUpdateOperationsInput? email;

  final StringFieldUpdateOperationsInput? password;

  @override
  Map<String, dynamic> toJson() => _$UserUncheckedUpdateInputToJson(this);
}

@_i1.jsonSerializable
class UserCreateManyInput implements _i1.JsonSerializable {
  const UserCreateManyInput({
    this.id,
    required this.username,
    required this.email,
    required this.password,
  });

  factory UserCreateManyInput.fromJson(Map<String, dynamic> json) =>
      _$UserCreateManyInputFromJson(json);

  final String? id;

  final String username;

  final String email;

  final String password;

  @override
  Map<String, dynamic> toJson() => _$UserCreateManyInputToJson(this);
}

@_i1.jsonSerializable
class UserUpdateManyMutationInput implements _i1.JsonSerializable {
  const UserUpdateManyMutationInput({
    this.id,
    this.username,
    this.email,
    this.password,
  });

  factory UserUpdateManyMutationInput.fromJson(Map<String, dynamic> json) =>
      _$UserUpdateManyMutationInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? username;

  final StringFieldUpdateOperationsInput? email;

  final StringFieldUpdateOperationsInput? password;

  @override
  Map<String, dynamic> toJson() => _$UserUpdateManyMutationInputToJson(this);
}

@_i1.jsonSerializable
class UserUncheckedUpdateManyInput implements _i1.JsonSerializable {
  const UserUncheckedUpdateManyInput({
    this.id,
    this.username,
    this.email,
    this.password,
  });

  factory UserUncheckedUpdateManyInput.fromJson(Map<String, dynamic> json) =>
      _$UserUncheckedUpdateManyInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? username;

  final StringFieldUpdateOperationsInput? email;

  final StringFieldUpdateOperationsInput? password;

  @override
  Map<String, dynamic> toJson() => _$UserUncheckedUpdateManyInputToJson(this);
}

@_i1.jsonSerializable
class ProductCreateInput implements _i1.JsonSerializable {
  const ProductCreateInput({
    this.id,
    required this.name,
    required this.description,
    required this.imgUrl,
    required this.price,
    this.productComments,
  });

  factory ProductCreateInput.fromJson(Map<String, dynamic> json) =>
      _$ProductCreateInputFromJson(json);

  final String? id;

  final String name;

  final String description;

  @JsonKey(name: r'img_url')
  final String imgUrl;

  final int price;

  @JsonKey(name: r'product_comments')
  final ProductCommentCreateNestedManyWithoutProductInput? productComments;

  @override
  Map<String, dynamic> toJson() => _$ProductCreateInputToJson(this);
}

@_i1.jsonSerializable
class ProductUncheckedCreateInput implements _i1.JsonSerializable {
  const ProductUncheckedCreateInput({
    this.id,
    required this.name,
    required this.description,
    required this.imgUrl,
    required this.price,
    this.productComments,
  });

  factory ProductUncheckedCreateInput.fromJson(Map<String, dynamic> json) =>
      _$ProductUncheckedCreateInputFromJson(json);

  final String? id;

  final String name;

  final String description;

  @JsonKey(name: r'img_url')
  final String imgUrl;

  final int price;

  @JsonKey(name: r'product_comments')
  final ProductCommentUncheckedCreateNestedManyWithoutProductInput?
      productComments;

  @override
  Map<String, dynamic> toJson() => _$ProductUncheckedCreateInputToJson(this);
}

@_i1.jsonSerializable
class ProductUpdateInput implements _i1.JsonSerializable {
  const ProductUpdateInput({
    this.id,
    this.name,
    this.description,
    this.imgUrl,
    this.price,
    this.productComments,
  });

  factory ProductUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$ProductUpdateInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? name;

  final StringFieldUpdateOperationsInput? description;

  @JsonKey(name: r'img_url')
  final StringFieldUpdateOperationsInput? imgUrl;

  final IntFieldUpdateOperationsInput? price;

  @JsonKey(name: r'product_comments')
  final ProductCommentUpdateManyWithoutProductNestedInput? productComments;

  @override
  Map<String, dynamic> toJson() => _$ProductUpdateInputToJson(this);
}

@_i1.jsonSerializable
class ProductUncheckedUpdateInput implements _i1.JsonSerializable {
  const ProductUncheckedUpdateInput({
    this.id,
    this.name,
    this.description,
    this.imgUrl,
    this.price,
    this.productComments,
  });

  factory ProductUncheckedUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$ProductUncheckedUpdateInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? name;

  final StringFieldUpdateOperationsInput? description;

  @JsonKey(name: r'img_url')
  final StringFieldUpdateOperationsInput? imgUrl;

  final IntFieldUpdateOperationsInput? price;

  @JsonKey(name: r'product_comments')
  final ProductCommentUncheckedUpdateManyWithoutProductNestedInput?
      productComments;

  @override
  Map<String, dynamic> toJson() => _$ProductUncheckedUpdateInputToJson(this);
}

@_i1.jsonSerializable
class ProductCreateManyInput implements _i1.JsonSerializable {
  const ProductCreateManyInput({
    this.id,
    required this.name,
    required this.description,
    required this.imgUrl,
    required this.price,
  });

  factory ProductCreateManyInput.fromJson(Map<String, dynamic> json) =>
      _$ProductCreateManyInputFromJson(json);

  final String? id;

  final String name;

  final String description;

  @JsonKey(name: r'img_url')
  final String imgUrl;

  final int price;

  @override
  Map<String, dynamic> toJson() => _$ProductCreateManyInputToJson(this);
}

@_i1.jsonSerializable
class ProductUpdateManyMutationInput implements _i1.JsonSerializable {
  const ProductUpdateManyMutationInput({
    this.id,
    this.name,
    this.description,
    this.imgUrl,
    this.price,
  });

  factory ProductUpdateManyMutationInput.fromJson(Map<String, dynamic> json) =>
      _$ProductUpdateManyMutationInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? name;

  final StringFieldUpdateOperationsInput? description;

  @JsonKey(name: r'img_url')
  final StringFieldUpdateOperationsInput? imgUrl;

  final IntFieldUpdateOperationsInput? price;

  @override
  Map<String, dynamic> toJson() => _$ProductUpdateManyMutationInputToJson(this);
}

@_i1.jsonSerializable
class ProductUncheckedUpdateManyInput implements _i1.JsonSerializable {
  const ProductUncheckedUpdateManyInput({
    this.id,
    this.name,
    this.description,
    this.imgUrl,
    this.price,
  });

  factory ProductUncheckedUpdateManyInput.fromJson(Map<String, dynamic> json) =>
      _$ProductUncheckedUpdateManyInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? name;

  final StringFieldUpdateOperationsInput? description;

  @JsonKey(name: r'img_url')
  final StringFieldUpdateOperationsInput? imgUrl;

  final IntFieldUpdateOperationsInput? price;

  @override
  Map<String, dynamic> toJson() =>
      _$ProductUncheckedUpdateManyInputToJson(this);
}

@_i1.jsonSerializable
class ProductCommentCreateInput implements _i1.JsonSerializable {
  const ProductCommentCreateInput({
    this.id,
    required this.username,
    required this.ratings,
    required this.email,
    required this.comment,
    required this.created,
    required this.product,
  });

  factory ProductCommentCreateInput.fromJson(Map<String, dynamic> json) =>
      _$ProductCommentCreateInputFromJson(json);

  final String? id;

  final String username;

  final double ratings;

  final String email;

  final String comment;

  final DateTime created;

  final ProductCreateNestedOneWithoutProductCommentsInput product;

  @override
  Map<String, dynamic> toJson() => _$ProductCommentCreateInputToJson(this);
}

@_i1.jsonSerializable
class ProductCommentUncheckedCreateInput implements _i1.JsonSerializable {
  const ProductCommentUncheckedCreateInput({
    this.id,
    required this.productId,
    required this.username,
    required this.ratings,
    required this.email,
    required this.comment,
    required this.created,
  });

  factory ProductCommentUncheckedCreateInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProductCommentUncheckedCreateInputFromJson(json);

  final String? id;

  final String productId;

  final String username;

  final double ratings;

  final String email;

  final String comment;

  final DateTime created;

  @override
  Map<String, dynamic> toJson() =>
      _$ProductCommentUncheckedCreateInputToJson(this);
}

@_i1.jsonSerializable
class ProductCommentUpdateInput implements _i1.JsonSerializable {
  const ProductCommentUpdateInput({
    this.id,
    this.username,
    this.ratings,
    this.email,
    this.comment,
    this.created,
    this.product,
  });

  factory ProductCommentUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$ProductCommentUpdateInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? username;

  final FloatFieldUpdateOperationsInput? ratings;

  final StringFieldUpdateOperationsInput? email;

  final StringFieldUpdateOperationsInput? comment;

  final DateTimeFieldUpdateOperationsInput? created;

  final ProductUpdateOneRequiredWithoutProductCommentsNestedInput? product;

  @override
  Map<String, dynamic> toJson() => _$ProductCommentUpdateInputToJson(this);
}

@_i1.jsonSerializable
class ProductCommentUncheckedUpdateInput implements _i1.JsonSerializable {
  const ProductCommentUncheckedUpdateInput({
    this.id,
    this.productId,
    this.username,
    this.ratings,
    this.email,
    this.comment,
    this.created,
  });

  factory ProductCommentUncheckedUpdateInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProductCommentUncheckedUpdateInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? productId;

  final StringFieldUpdateOperationsInput? username;

  final FloatFieldUpdateOperationsInput? ratings;

  final StringFieldUpdateOperationsInput? email;

  final StringFieldUpdateOperationsInput? comment;

  final DateTimeFieldUpdateOperationsInput? created;

  @override
  Map<String, dynamic> toJson() =>
      _$ProductCommentUncheckedUpdateInputToJson(this);
}

@_i1.jsonSerializable
class ProductCommentCreateManyInput implements _i1.JsonSerializable {
  const ProductCommentCreateManyInput({
    this.id,
    required this.productId,
    required this.username,
    required this.ratings,
    required this.email,
    required this.comment,
    required this.created,
  });

  factory ProductCommentCreateManyInput.fromJson(Map<String, dynamic> json) =>
      _$ProductCommentCreateManyInputFromJson(json);

  final String? id;

  final String productId;

  final String username;

  final double ratings;

  final String email;

  final String comment;

  final DateTime created;

  @override
  Map<String, dynamic> toJson() => _$ProductCommentCreateManyInputToJson(this);
}

@_i1.jsonSerializable
class ProductCommentUpdateManyMutationInput implements _i1.JsonSerializable {
  const ProductCommentUpdateManyMutationInput({
    this.id,
    this.username,
    this.ratings,
    this.email,
    this.comment,
    this.created,
  });

  factory ProductCommentUpdateManyMutationInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProductCommentUpdateManyMutationInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? username;

  final FloatFieldUpdateOperationsInput? ratings;

  final StringFieldUpdateOperationsInput? email;

  final StringFieldUpdateOperationsInput? comment;

  final DateTimeFieldUpdateOperationsInput? created;

  @override
  Map<String, dynamic> toJson() =>
      _$ProductCommentUpdateManyMutationInputToJson(this);
}

@_i1.jsonSerializable
class ProductCommentUncheckedUpdateManyInput implements _i1.JsonSerializable {
  const ProductCommentUncheckedUpdateManyInput({
    this.id,
    this.productId,
    this.username,
    this.ratings,
    this.email,
    this.comment,
    this.created,
  });

  factory ProductCommentUncheckedUpdateManyInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProductCommentUncheckedUpdateManyInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? productId;

  final StringFieldUpdateOperationsInput? username;

  final FloatFieldUpdateOperationsInput? ratings;

  final StringFieldUpdateOperationsInput? email;

  final StringFieldUpdateOperationsInput? comment;

  final DateTimeFieldUpdateOperationsInput? created;

  @override
  Map<String, dynamic> toJson() =>
      _$ProductCommentUncheckedUpdateManyInputToJson(this);
}

@_i1.jsonSerializable
class CustomerOrderCreateInput implements _i1.JsonSerializable {
  const CustomerOrderCreateInput({
    required this.customerName,
    required this.status,
    required this.totalPrice,
    required this.created,
    this.address,
    this.orderItems,
  });

  factory CustomerOrderCreateInput.fromJson(Map<String, dynamic> json) =>
      _$CustomerOrderCreateInputFromJson(json);

  @JsonKey(name: r'customer_name')
  final String customerName;

  final String status;

  final int totalPrice;

  final DateTime created;

  final AddressCreateNestedManyWithoutCustomerOrderInput? address;

  final OrderItemsCreateNestedManyWithoutCustomerOrderInput? orderItems;

  @override
  Map<String, dynamic> toJson() => _$CustomerOrderCreateInputToJson(this);
}

@_i1.jsonSerializable
class CustomerOrderUncheckedCreateInput implements _i1.JsonSerializable {
  const CustomerOrderUncheckedCreateInput({
    this.id,
    required this.customerName,
    required this.status,
    required this.totalPrice,
    required this.created,
    this.address,
    this.orderItems,
  });

  factory CustomerOrderUncheckedCreateInput.fromJson(
          Map<String, dynamic> json) =>
      _$CustomerOrderUncheckedCreateInputFromJson(json);

  final int? id;

  @JsonKey(name: r'customer_name')
  final String customerName;

  final String status;

  final int totalPrice;

  final DateTime created;

  final AddressUncheckedCreateNestedManyWithoutCustomerOrderInput? address;

  final OrderItemsUncheckedCreateNestedManyWithoutCustomerOrderInput?
      orderItems;

  @override
  Map<String, dynamic> toJson() =>
      _$CustomerOrderUncheckedCreateInputToJson(this);
}

@_i1.jsonSerializable
class CustomerOrderUpdateInput implements _i1.JsonSerializable {
  const CustomerOrderUpdateInput({
    this.customerName,
    this.status,
    this.totalPrice,
    this.created,
    this.address,
    this.orderItems,
  });

  factory CustomerOrderUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$CustomerOrderUpdateInputFromJson(json);

  @JsonKey(name: r'customer_name')
  final StringFieldUpdateOperationsInput? customerName;

  final StringFieldUpdateOperationsInput? status;

  final IntFieldUpdateOperationsInput? totalPrice;

  final DateTimeFieldUpdateOperationsInput? created;

  final AddressUpdateManyWithoutCustomerOrderNestedInput? address;

  final OrderItemsUpdateManyWithoutCustomerOrderNestedInput? orderItems;

  @override
  Map<String, dynamic> toJson() => _$CustomerOrderUpdateInputToJson(this);
}

@_i1.jsonSerializable
class CustomerOrderUncheckedUpdateInput implements _i1.JsonSerializable {
  const CustomerOrderUncheckedUpdateInput({
    this.id,
    this.customerName,
    this.status,
    this.totalPrice,
    this.created,
    this.address,
    this.orderItems,
  });

  factory CustomerOrderUncheckedUpdateInput.fromJson(
          Map<String, dynamic> json) =>
      _$CustomerOrderUncheckedUpdateInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  @JsonKey(name: r'customer_name')
  final StringFieldUpdateOperationsInput? customerName;

  final StringFieldUpdateOperationsInput? status;

  final IntFieldUpdateOperationsInput? totalPrice;

  final DateTimeFieldUpdateOperationsInput? created;

  final AddressUncheckedUpdateManyWithoutCustomerOrderNestedInput? address;

  final OrderItemsUncheckedUpdateManyWithoutCustomerOrderNestedInput?
      orderItems;

  @override
  Map<String, dynamic> toJson() =>
      _$CustomerOrderUncheckedUpdateInputToJson(this);
}

@_i1.jsonSerializable
class CustomerOrderCreateManyInput implements _i1.JsonSerializable {
  const CustomerOrderCreateManyInput({
    this.id,
    required this.customerName,
    required this.status,
    required this.totalPrice,
    required this.created,
  });

  factory CustomerOrderCreateManyInput.fromJson(Map<String, dynamic> json) =>
      _$CustomerOrderCreateManyInputFromJson(json);

  final int? id;

  @JsonKey(name: r'customer_name')
  final String customerName;

  final String status;

  final int totalPrice;

  final DateTime created;

  @override
  Map<String, dynamic> toJson() => _$CustomerOrderCreateManyInputToJson(this);
}

@_i1.jsonSerializable
class CustomerOrderUpdateManyMutationInput implements _i1.JsonSerializable {
  const CustomerOrderUpdateManyMutationInput({
    this.customerName,
    this.status,
    this.totalPrice,
    this.created,
  });

  factory CustomerOrderUpdateManyMutationInput.fromJson(
          Map<String, dynamic> json) =>
      _$CustomerOrderUpdateManyMutationInputFromJson(json);

  @JsonKey(name: r'customer_name')
  final StringFieldUpdateOperationsInput? customerName;

  final StringFieldUpdateOperationsInput? status;

  final IntFieldUpdateOperationsInput? totalPrice;

  final DateTimeFieldUpdateOperationsInput? created;

  @override
  Map<String, dynamic> toJson() =>
      _$CustomerOrderUpdateManyMutationInputToJson(this);
}

@_i1.jsonSerializable
class CustomerOrderUncheckedUpdateManyInput implements _i1.JsonSerializable {
  const CustomerOrderUncheckedUpdateManyInput({
    this.id,
    this.customerName,
    this.status,
    this.totalPrice,
    this.created,
  });

  factory CustomerOrderUncheckedUpdateManyInput.fromJson(
          Map<String, dynamic> json) =>
      _$CustomerOrderUncheckedUpdateManyInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  @JsonKey(name: r'customer_name')
  final StringFieldUpdateOperationsInput? customerName;

  final StringFieldUpdateOperationsInput? status;

  final IntFieldUpdateOperationsInput? totalPrice;

  final DateTimeFieldUpdateOperationsInput? created;

  @override
  Map<String, dynamic> toJson() =>
      _$CustomerOrderUncheckedUpdateManyInputToJson(this);
}

@_i1.jsonSerializable
class AddressCreateInput implements _i1.JsonSerializable {
  const AddressCreateInput({
    required this.street,
    required this.district,
    required this.number,
    required this.city,
    required this.customerOrder,
  });

  factory AddressCreateInput.fromJson(Map<String, dynamic> json) =>
      _$AddressCreateInputFromJson(json);

  final String street;

  final String district;

  final int number;

  final String city;

  @JsonKey(name: r'customer_order')
  final CustomerOrderCreateNestedOneWithoutAddressInput customerOrder;

  @override
  Map<String, dynamic> toJson() => _$AddressCreateInputToJson(this);
}

@_i1.jsonSerializable
class AddressUncheckedCreateInput implements _i1.JsonSerializable {
  const AddressUncheckedCreateInput({
    required this.street,
    required this.district,
    required this.number,
    required this.city,
    required this.customerOrderId,
  });

  factory AddressUncheckedCreateInput.fromJson(Map<String, dynamic> json) =>
      _$AddressUncheckedCreateInputFromJson(json);

  final String street;

  final String district;

  final int number;

  final String city;

  @JsonKey(name: r'customer_order_id')
  final int customerOrderId;

  @override
  Map<String, dynamic> toJson() => _$AddressUncheckedCreateInputToJson(this);
}

@_i1.jsonSerializable
class AddressUpdateInput implements _i1.JsonSerializable {
  const AddressUpdateInput({
    this.street,
    this.district,
    this.number,
    this.city,
    this.customerOrder,
  });

  factory AddressUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$AddressUpdateInputFromJson(json);

  final StringFieldUpdateOperationsInput? street;

  final StringFieldUpdateOperationsInput? district;

  final IntFieldUpdateOperationsInput? number;

  final StringFieldUpdateOperationsInput? city;

  @JsonKey(name: r'customer_order')
  final CustomerOrderUpdateOneRequiredWithoutAddressNestedInput? customerOrder;

  @override
  Map<String, dynamic> toJson() => _$AddressUpdateInputToJson(this);
}

@_i1.jsonSerializable
class AddressUncheckedUpdateInput implements _i1.JsonSerializable {
  const AddressUncheckedUpdateInput({
    this.street,
    this.district,
    this.number,
    this.city,
    this.customerOrderId,
  });

  factory AddressUncheckedUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$AddressUncheckedUpdateInputFromJson(json);

  final StringFieldUpdateOperationsInput? street;

  final StringFieldUpdateOperationsInput? district;

  final IntFieldUpdateOperationsInput? number;

  final StringFieldUpdateOperationsInput? city;

  @JsonKey(name: r'customer_order_id')
  final IntFieldUpdateOperationsInput? customerOrderId;

  @override
  Map<String, dynamic> toJson() => _$AddressUncheckedUpdateInputToJson(this);
}

@_i1.jsonSerializable
class AddressCreateManyInput implements _i1.JsonSerializable {
  const AddressCreateManyInput({
    required this.street,
    required this.district,
    required this.number,
    required this.city,
    required this.customerOrderId,
  });

  factory AddressCreateManyInput.fromJson(Map<String, dynamic> json) =>
      _$AddressCreateManyInputFromJson(json);

  final String street;

  final String district;

  final int number;

  final String city;

  @JsonKey(name: r'customer_order_id')
  final int customerOrderId;

  @override
  Map<String, dynamic> toJson() => _$AddressCreateManyInputToJson(this);
}

@_i1.jsonSerializable
class AddressUpdateManyMutationInput implements _i1.JsonSerializable {
  const AddressUpdateManyMutationInput({
    this.street,
    this.district,
    this.number,
    this.city,
  });

  factory AddressUpdateManyMutationInput.fromJson(Map<String, dynamic> json) =>
      _$AddressUpdateManyMutationInputFromJson(json);

  final StringFieldUpdateOperationsInput? street;

  final StringFieldUpdateOperationsInput? district;

  final IntFieldUpdateOperationsInput? number;

  final StringFieldUpdateOperationsInput? city;

  @override
  Map<String, dynamic> toJson() => _$AddressUpdateManyMutationInputToJson(this);
}

@_i1.jsonSerializable
class AddressUncheckedUpdateManyInput implements _i1.JsonSerializable {
  const AddressUncheckedUpdateManyInput({
    this.street,
    this.district,
    this.number,
    this.city,
    this.customerOrderId,
  });

  factory AddressUncheckedUpdateManyInput.fromJson(Map<String, dynamic> json) =>
      _$AddressUncheckedUpdateManyInputFromJson(json);

  final StringFieldUpdateOperationsInput? street;

  final StringFieldUpdateOperationsInput? district;

  final IntFieldUpdateOperationsInput? number;

  final StringFieldUpdateOperationsInput? city;

  @JsonKey(name: r'customer_order_id')
  final IntFieldUpdateOperationsInput? customerOrderId;

  @override
  Map<String, dynamic> toJson() =>
      _$AddressUncheckedUpdateManyInputToJson(this);
}

@_i1.jsonSerializable
class OrderItemsCreateInput implements _i1.JsonSerializable {
  const OrderItemsCreateInput({
    required this.amount,
    required this.price,
    required this.customerOrder,
  });

  factory OrderItemsCreateInput.fromJson(Map<String, dynamic> json) =>
      _$OrderItemsCreateInputFromJson(json);

  final int amount;

  final int price;

  final CustomerOrderCreateNestedOneWithoutOrderItemsInput customerOrder;

  @override
  Map<String, dynamic> toJson() => _$OrderItemsCreateInputToJson(this);
}

@_i1.jsonSerializable
class OrderItemsUncheckedCreateInput implements _i1.JsonSerializable {
  const OrderItemsUncheckedCreateInput({
    required this.customerOrderId,
    required this.amount,
    required this.price,
  });

  factory OrderItemsUncheckedCreateInput.fromJson(Map<String, dynamic> json) =>
      _$OrderItemsUncheckedCreateInputFromJson(json);

  @JsonKey(name: r'customer_order_id')
  final int customerOrderId;

  final int amount;

  final int price;

  @override
  Map<String, dynamic> toJson() => _$OrderItemsUncheckedCreateInputToJson(this);
}

@_i1.jsonSerializable
class OrderItemsUpdateInput implements _i1.JsonSerializable {
  const OrderItemsUpdateInput({
    this.amount,
    this.price,
    this.customerOrder,
  });

  factory OrderItemsUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$OrderItemsUpdateInputFromJson(json);

  final IntFieldUpdateOperationsInput? amount;

  final IntFieldUpdateOperationsInput? price;

  final CustomerOrderUpdateOneRequiredWithoutOrderItemsNestedInput?
      customerOrder;

  @override
  Map<String, dynamic> toJson() => _$OrderItemsUpdateInputToJson(this);
}

@_i1.jsonSerializable
class OrderItemsUncheckedUpdateInput implements _i1.JsonSerializable {
  const OrderItemsUncheckedUpdateInput({
    this.customerOrderId,
    this.amount,
    this.price,
  });

  factory OrderItemsUncheckedUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$OrderItemsUncheckedUpdateInputFromJson(json);

  @JsonKey(name: r'customer_order_id')
  final IntFieldUpdateOperationsInput? customerOrderId;

  final IntFieldUpdateOperationsInput? amount;

  final IntFieldUpdateOperationsInput? price;

  @override
  Map<String, dynamic> toJson() => _$OrderItemsUncheckedUpdateInputToJson(this);
}

@_i1.jsonSerializable
class OrderItemsCreateManyInput implements _i1.JsonSerializable {
  const OrderItemsCreateManyInput({
    required this.customerOrderId,
    required this.amount,
    required this.price,
  });

  factory OrderItemsCreateManyInput.fromJson(Map<String, dynamic> json) =>
      _$OrderItemsCreateManyInputFromJson(json);

  @JsonKey(name: r'customer_order_id')
  final int customerOrderId;

  final int amount;

  final int price;

  @override
  Map<String, dynamic> toJson() => _$OrderItemsCreateManyInputToJson(this);
}

@_i1.jsonSerializable
class OrderItemsUpdateManyMutationInput implements _i1.JsonSerializable {
  const OrderItemsUpdateManyMutationInput({
    this.amount,
    this.price,
  });

  factory OrderItemsUpdateManyMutationInput.fromJson(
          Map<String, dynamic> json) =>
      _$OrderItemsUpdateManyMutationInputFromJson(json);

  final IntFieldUpdateOperationsInput? amount;

  final IntFieldUpdateOperationsInput? price;

  @override
  Map<String, dynamic> toJson() =>
      _$OrderItemsUpdateManyMutationInputToJson(this);
}

@_i1.jsonSerializable
class OrderItemsUncheckedUpdateManyInput implements _i1.JsonSerializable {
  const OrderItemsUncheckedUpdateManyInput({
    this.customerOrderId,
    this.amount,
    this.price,
  });

  factory OrderItemsUncheckedUpdateManyInput.fromJson(
          Map<String, dynamic> json) =>
      _$OrderItemsUncheckedUpdateManyInputFromJson(json);

  @JsonKey(name: r'customer_order_id')
  final IntFieldUpdateOperationsInput? customerOrderId;

  final IntFieldUpdateOperationsInput? amount;

  final IntFieldUpdateOperationsInput? price;

  @override
  Map<String, dynamic> toJson() =>
      _$OrderItemsUncheckedUpdateManyInputToJson(this);
}

@_i1.jsonSerializable
class UuidFilter implements _i1.JsonSerializable {
  const UuidFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.mode,
    this.not,
  });

  factory UuidFilter.fromJson(Map<String, dynamic> json) =>
      _$UuidFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final QueryMode? mode;

  final NestedUuidFilter? not;

  @override
  Map<String, dynamic> toJson() => _$UuidFilterToJson(this);
}

@_i1.jsonSerializable
class StringFilter implements _i1.JsonSerializable {
  const StringFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.mode,
    this.not,
  });

  factory StringFilter.fromJson(Map<String, dynamic> json) =>
      _$StringFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final QueryMode? mode;

  final NestedStringFilter? not;

  @override
  Map<String, dynamic> toJson() => _$StringFilterToJson(this);
}

@_i1.jsonSerializable
class UserCountOrderByAggregateInput implements _i1.JsonSerializable {
  const UserCountOrderByAggregateInput({
    this.id,
    this.username,
    this.email,
    this.password,
  });

  factory UserCountOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$UserCountOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? username;

  final SortOrder? email;

  final SortOrder? password;

  @override
  Map<String, dynamic> toJson() => _$UserCountOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class UserMaxOrderByAggregateInput implements _i1.JsonSerializable {
  const UserMaxOrderByAggregateInput({
    this.id,
    this.username,
    this.email,
    this.password,
  });

  factory UserMaxOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$UserMaxOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? username;

  final SortOrder? email;

  final SortOrder? password;

  @override
  Map<String, dynamic> toJson() => _$UserMaxOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class UserMinOrderByAggregateInput implements _i1.JsonSerializable {
  const UserMinOrderByAggregateInput({
    this.id,
    this.username,
    this.email,
    this.password,
  });

  factory UserMinOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$UserMinOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? username;

  final SortOrder? email;

  final SortOrder? password;

  @override
  Map<String, dynamic> toJson() => _$UserMinOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class UuidWithAggregatesFilter implements _i1.JsonSerializable {
  const UuidWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.mode,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory UuidWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$UuidWithAggregatesFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final QueryMode? mode;

  final NestedUuidWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_min')
  final NestedStringFilter? $min;

  @JsonKey(name: r'_max')
  final NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$UuidWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class StringWithAggregatesFilter implements _i1.JsonSerializable {
  const StringWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.mode,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory StringWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$StringWithAggregatesFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final QueryMode? mode;

  final NestedStringWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_min')
  final NestedStringFilter? $min;

  @JsonKey(name: r'_max')
  final NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$StringWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class IntFilter implements _i1.JsonSerializable {
  const IntFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory IntFilter.fromJson(Map<String, dynamic> json) =>
      _$IntFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntFilter? not;

  @override
  Map<String, dynamic> toJson() => _$IntFilterToJson(this);
}

@_i1.jsonSerializable
class ProductCommentListRelationFilter implements _i1.JsonSerializable {
  const ProductCommentListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  factory ProductCommentListRelationFilter.fromJson(
          Map<String, dynamic> json) =>
      _$ProductCommentListRelationFilterFromJson(json);

  final ProductCommentWhereInput? every;

  final ProductCommentWhereInput? some;

  final ProductCommentWhereInput? none;

  @override
  Map<String, dynamic> toJson() =>
      _$ProductCommentListRelationFilterToJson(this);
}

@_i1.jsonSerializable
class ProductCommentOrderByRelationAggregateInput
    implements _i1.JsonSerializable {
  const ProductCommentOrderByRelationAggregateInput({this.$count});

  factory ProductCommentOrderByRelationAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProductCommentOrderByRelationAggregateInputFromJson(json);

  @JsonKey(name: r'_count')
  final SortOrder? $count;

  @override
  Map<String, dynamic> toJson() =>
      _$ProductCommentOrderByRelationAggregateInputToJson(this);
}

@_i1.jsonSerializable
class ProductCountOrderByAggregateInput implements _i1.JsonSerializable {
  const ProductCountOrderByAggregateInput({
    this.id,
    this.name,
    this.description,
    this.imgUrl,
    this.price,
  });

  factory ProductCountOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProductCountOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? name;

  final SortOrder? description;

  @JsonKey(name: r'img_url')
  final SortOrder? imgUrl;

  final SortOrder? price;

  @override
  Map<String, dynamic> toJson() =>
      _$ProductCountOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class ProductAvgOrderByAggregateInput implements _i1.JsonSerializable {
  const ProductAvgOrderByAggregateInput({this.price});

  factory ProductAvgOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$ProductAvgOrderByAggregateInputFromJson(json);

  final SortOrder? price;

  @override
  Map<String, dynamic> toJson() =>
      _$ProductAvgOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class ProductMaxOrderByAggregateInput implements _i1.JsonSerializable {
  const ProductMaxOrderByAggregateInput({
    this.id,
    this.name,
    this.description,
    this.imgUrl,
    this.price,
  });

  factory ProductMaxOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$ProductMaxOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? name;

  final SortOrder? description;

  @JsonKey(name: r'img_url')
  final SortOrder? imgUrl;

  final SortOrder? price;

  @override
  Map<String, dynamic> toJson() =>
      _$ProductMaxOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class ProductMinOrderByAggregateInput implements _i1.JsonSerializable {
  const ProductMinOrderByAggregateInput({
    this.id,
    this.name,
    this.description,
    this.imgUrl,
    this.price,
  });

  factory ProductMinOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$ProductMinOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? name;

  final SortOrder? description;

  @JsonKey(name: r'img_url')
  final SortOrder? imgUrl;

  final SortOrder? price;

  @override
  Map<String, dynamic> toJson() =>
      _$ProductMinOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class ProductSumOrderByAggregateInput implements _i1.JsonSerializable {
  const ProductSumOrderByAggregateInput({this.price});

  factory ProductSumOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$ProductSumOrderByAggregateInputFromJson(json);

  final SortOrder? price;

  @override
  Map<String, dynamic> toJson() =>
      _$ProductSumOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class IntWithAggregatesFilter implements _i1.JsonSerializable {
  const IntWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory IntWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$IntWithAggregatesFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_avg')
  final NestedFloatFilter? $avg;

  @JsonKey(name: r'_sum')
  final NestedIntFilter? $sum;

  @JsonKey(name: r'_min')
  final NestedIntFilter? $min;

  @JsonKey(name: r'_max')
  final NestedIntFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$IntWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class FloatFilter implements _i1.JsonSerializable {
  const FloatFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory FloatFilter.fromJson(Map<String, dynamic> json) =>
      _$FloatFilterFromJson(json);

  final double? equals;

  @JsonKey(name: r'in')
  final Iterable<double>? $in;

  final Iterable<double>? notIn;

  final double? lt;

  final double? lte;

  final double? gt;

  final double? gte;

  final NestedFloatFilter? not;

  @override
  Map<String, dynamic> toJson() => _$FloatFilterToJson(this);
}

@_i1.jsonSerializable
class DateTimeFilter implements _i1.JsonSerializable {
  const DateTimeFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory DateTimeFilter.fromJson(Map<String, dynamic> json) =>
      _$DateTimeFilterFromJson(json);

  final DateTime? equals;

  @JsonKey(name: r'in')
  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final DateTime? lt;

  final DateTime? lte;

  final DateTime? gt;

  final DateTime? gte;

  final NestedDateTimeFilter? not;

  @override
  Map<String, dynamic> toJson() => _$DateTimeFilterToJson(this);
}

@_i1.jsonSerializable
class ProductRelationFilter implements _i1.JsonSerializable {
  const ProductRelationFilter({
    this.$is,
    this.isNot,
  });

  factory ProductRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$ProductRelationFilterFromJson(json);

  @JsonKey(name: r'is')
  final ProductWhereInput? $is;

  final ProductWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => _$ProductRelationFilterToJson(this);
}

@_i1.jsonSerializable
class ProductCommentCountOrderByAggregateInput implements _i1.JsonSerializable {
  const ProductCommentCountOrderByAggregateInput({
    this.id,
    this.productId,
    this.username,
    this.ratings,
    this.email,
    this.comment,
    this.created,
  });

  factory ProductCommentCountOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProductCommentCountOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? productId;

  final SortOrder? username;

  final SortOrder? ratings;

  final SortOrder? email;

  final SortOrder? comment;

  final SortOrder? created;

  @override
  Map<String, dynamic> toJson() =>
      _$ProductCommentCountOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class ProductCommentAvgOrderByAggregateInput implements _i1.JsonSerializable {
  const ProductCommentAvgOrderByAggregateInput({this.ratings});

  factory ProductCommentAvgOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProductCommentAvgOrderByAggregateInputFromJson(json);

  final SortOrder? ratings;

  @override
  Map<String, dynamic> toJson() =>
      _$ProductCommentAvgOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class ProductCommentMaxOrderByAggregateInput implements _i1.JsonSerializable {
  const ProductCommentMaxOrderByAggregateInput({
    this.id,
    this.productId,
    this.username,
    this.ratings,
    this.email,
    this.comment,
    this.created,
  });

  factory ProductCommentMaxOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProductCommentMaxOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? productId;

  final SortOrder? username;

  final SortOrder? ratings;

  final SortOrder? email;

  final SortOrder? comment;

  final SortOrder? created;

  @override
  Map<String, dynamic> toJson() =>
      _$ProductCommentMaxOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class ProductCommentMinOrderByAggregateInput implements _i1.JsonSerializable {
  const ProductCommentMinOrderByAggregateInput({
    this.id,
    this.productId,
    this.username,
    this.ratings,
    this.email,
    this.comment,
    this.created,
  });

  factory ProductCommentMinOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProductCommentMinOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? productId;

  final SortOrder? username;

  final SortOrder? ratings;

  final SortOrder? email;

  final SortOrder? comment;

  final SortOrder? created;

  @override
  Map<String, dynamic> toJson() =>
      _$ProductCommentMinOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class ProductCommentSumOrderByAggregateInput implements _i1.JsonSerializable {
  const ProductCommentSumOrderByAggregateInput({this.ratings});

  factory ProductCommentSumOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProductCommentSumOrderByAggregateInputFromJson(json);

  final SortOrder? ratings;

  @override
  Map<String, dynamic> toJson() =>
      _$ProductCommentSumOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class FloatWithAggregatesFilter implements _i1.JsonSerializable {
  const FloatWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory FloatWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$FloatWithAggregatesFilterFromJson(json);

  final double? equals;

  @JsonKey(name: r'in')
  final Iterable<double>? $in;

  final Iterable<double>? notIn;

  final double? lt;

  final double? lte;

  final double? gt;

  final double? gte;

  final NestedFloatWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_avg')
  final NestedFloatFilter? $avg;

  @JsonKey(name: r'_sum')
  final NestedFloatFilter? $sum;

  @JsonKey(name: r'_min')
  final NestedFloatFilter? $min;

  @JsonKey(name: r'_max')
  final NestedFloatFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$FloatWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class DateTimeWithAggregatesFilter implements _i1.JsonSerializable {
  const DateTimeWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory DateTimeWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$DateTimeWithAggregatesFilterFromJson(json);

  final DateTime? equals;

  @JsonKey(name: r'in')
  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final DateTime? lt;

  final DateTime? lte;

  final DateTime? gt;

  final DateTime? gte;

  final NestedDateTimeWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_min')
  final NestedDateTimeFilter? $min;

  @JsonKey(name: r'_max')
  final NestedDateTimeFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$DateTimeWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class AddressListRelationFilter implements _i1.JsonSerializable {
  const AddressListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  factory AddressListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$AddressListRelationFilterFromJson(json);

  final AddressWhereInput? every;

  final AddressWhereInput? some;

  final AddressWhereInput? none;

  @override
  Map<String, dynamic> toJson() => _$AddressListRelationFilterToJson(this);
}

@_i1.jsonSerializable
class OrderItemsListRelationFilter implements _i1.JsonSerializable {
  const OrderItemsListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  factory OrderItemsListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$OrderItemsListRelationFilterFromJson(json);

  final OrderItemsWhereInput? every;

  final OrderItemsWhereInput? some;

  final OrderItemsWhereInput? none;

  @override
  Map<String, dynamic> toJson() => _$OrderItemsListRelationFilterToJson(this);
}

@_i1.jsonSerializable
class AddressOrderByRelationAggregateInput implements _i1.JsonSerializable {
  const AddressOrderByRelationAggregateInput({this.$count});

  factory AddressOrderByRelationAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$AddressOrderByRelationAggregateInputFromJson(json);

  @JsonKey(name: r'_count')
  final SortOrder? $count;

  @override
  Map<String, dynamic> toJson() =>
      _$AddressOrderByRelationAggregateInputToJson(this);
}

@_i1.jsonSerializable
class OrderItemsOrderByRelationAggregateInput implements _i1.JsonSerializable {
  const OrderItemsOrderByRelationAggregateInput({this.$count});

  factory OrderItemsOrderByRelationAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$OrderItemsOrderByRelationAggregateInputFromJson(json);

  @JsonKey(name: r'_count')
  final SortOrder? $count;

  @override
  Map<String, dynamic> toJson() =>
      _$OrderItemsOrderByRelationAggregateInputToJson(this);
}

@_i1.jsonSerializable
class CustomerOrderCountOrderByAggregateInput implements _i1.JsonSerializable {
  const CustomerOrderCountOrderByAggregateInput({
    this.id,
    this.customerName,
    this.status,
    this.totalPrice,
    this.created,
  });

  factory CustomerOrderCountOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$CustomerOrderCountOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  @JsonKey(name: r'customer_name')
  final SortOrder? customerName;

  final SortOrder? status;

  final SortOrder? totalPrice;

  final SortOrder? created;

  @override
  Map<String, dynamic> toJson() =>
      _$CustomerOrderCountOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class CustomerOrderAvgOrderByAggregateInput implements _i1.JsonSerializable {
  const CustomerOrderAvgOrderByAggregateInput({
    this.id,
    this.totalPrice,
  });

  factory CustomerOrderAvgOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$CustomerOrderAvgOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? totalPrice;

  @override
  Map<String, dynamic> toJson() =>
      _$CustomerOrderAvgOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class CustomerOrderMaxOrderByAggregateInput implements _i1.JsonSerializable {
  const CustomerOrderMaxOrderByAggregateInput({
    this.id,
    this.customerName,
    this.status,
    this.totalPrice,
    this.created,
  });

  factory CustomerOrderMaxOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$CustomerOrderMaxOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  @JsonKey(name: r'customer_name')
  final SortOrder? customerName;

  final SortOrder? status;

  final SortOrder? totalPrice;

  final SortOrder? created;

  @override
  Map<String, dynamic> toJson() =>
      _$CustomerOrderMaxOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class CustomerOrderMinOrderByAggregateInput implements _i1.JsonSerializable {
  const CustomerOrderMinOrderByAggregateInput({
    this.id,
    this.customerName,
    this.status,
    this.totalPrice,
    this.created,
  });

  factory CustomerOrderMinOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$CustomerOrderMinOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  @JsonKey(name: r'customer_name')
  final SortOrder? customerName;

  final SortOrder? status;

  final SortOrder? totalPrice;

  final SortOrder? created;

  @override
  Map<String, dynamic> toJson() =>
      _$CustomerOrderMinOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class CustomerOrderSumOrderByAggregateInput implements _i1.JsonSerializable {
  const CustomerOrderSumOrderByAggregateInput({
    this.id,
    this.totalPrice,
  });

  factory CustomerOrderSumOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$CustomerOrderSumOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? totalPrice;

  @override
  Map<String, dynamic> toJson() =>
      _$CustomerOrderSumOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class CustomerOrderRelationFilter implements _i1.JsonSerializable {
  const CustomerOrderRelationFilter({
    this.$is,
    this.isNot,
  });

  factory CustomerOrderRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$CustomerOrderRelationFilterFromJson(json);

  @JsonKey(name: r'is')
  final CustomerOrderWhereInput? $is;

  final CustomerOrderWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => _$CustomerOrderRelationFilterToJson(this);
}

@_i1.jsonSerializable
class AddressCountOrderByAggregateInput implements _i1.JsonSerializable {
  const AddressCountOrderByAggregateInput({
    this.street,
    this.district,
    this.number,
    this.city,
    this.customerOrderId,
  });

  factory AddressCountOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$AddressCountOrderByAggregateInputFromJson(json);

  final SortOrder? street;

  final SortOrder? district;

  final SortOrder? number;

  final SortOrder? city;

  @JsonKey(name: r'customer_order_id')
  final SortOrder? customerOrderId;

  @override
  Map<String, dynamic> toJson() =>
      _$AddressCountOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class AddressAvgOrderByAggregateInput implements _i1.JsonSerializable {
  const AddressAvgOrderByAggregateInput({
    this.number,
    this.customerOrderId,
  });

  factory AddressAvgOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$AddressAvgOrderByAggregateInputFromJson(json);

  final SortOrder? number;

  @JsonKey(name: r'customer_order_id')
  final SortOrder? customerOrderId;

  @override
  Map<String, dynamic> toJson() =>
      _$AddressAvgOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class AddressMaxOrderByAggregateInput implements _i1.JsonSerializable {
  const AddressMaxOrderByAggregateInput({
    this.street,
    this.district,
    this.number,
    this.city,
    this.customerOrderId,
  });

  factory AddressMaxOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$AddressMaxOrderByAggregateInputFromJson(json);

  final SortOrder? street;

  final SortOrder? district;

  final SortOrder? number;

  final SortOrder? city;

  @JsonKey(name: r'customer_order_id')
  final SortOrder? customerOrderId;

  @override
  Map<String, dynamic> toJson() =>
      _$AddressMaxOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class AddressMinOrderByAggregateInput implements _i1.JsonSerializable {
  const AddressMinOrderByAggregateInput({
    this.street,
    this.district,
    this.number,
    this.city,
    this.customerOrderId,
  });

  factory AddressMinOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$AddressMinOrderByAggregateInputFromJson(json);

  final SortOrder? street;

  final SortOrder? district;

  final SortOrder? number;

  final SortOrder? city;

  @JsonKey(name: r'customer_order_id')
  final SortOrder? customerOrderId;

  @override
  Map<String, dynamic> toJson() =>
      _$AddressMinOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class AddressSumOrderByAggregateInput implements _i1.JsonSerializable {
  const AddressSumOrderByAggregateInput({
    this.number,
    this.customerOrderId,
  });

  factory AddressSumOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$AddressSumOrderByAggregateInputFromJson(json);

  final SortOrder? number;

  @JsonKey(name: r'customer_order_id')
  final SortOrder? customerOrderId;

  @override
  Map<String, dynamic> toJson() =>
      _$AddressSumOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class OrderItemsCountOrderByAggregateInput implements _i1.JsonSerializable {
  const OrderItemsCountOrderByAggregateInput({
    this.customerOrderId,
    this.amount,
    this.price,
  });

  factory OrderItemsCountOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$OrderItemsCountOrderByAggregateInputFromJson(json);

  @JsonKey(name: r'customer_order_id')
  final SortOrder? customerOrderId;

  final SortOrder? amount;

  final SortOrder? price;

  @override
  Map<String, dynamic> toJson() =>
      _$OrderItemsCountOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class OrderItemsAvgOrderByAggregateInput implements _i1.JsonSerializable {
  const OrderItemsAvgOrderByAggregateInput({
    this.customerOrderId,
    this.amount,
    this.price,
  });

  factory OrderItemsAvgOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$OrderItemsAvgOrderByAggregateInputFromJson(json);

  @JsonKey(name: r'customer_order_id')
  final SortOrder? customerOrderId;

  final SortOrder? amount;

  final SortOrder? price;

  @override
  Map<String, dynamic> toJson() =>
      _$OrderItemsAvgOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class OrderItemsMaxOrderByAggregateInput implements _i1.JsonSerializable {
  const OrderItemsMaxOrderByAggregateInput({
    this.customerOrderId,
    this.amount,
    this.price,
  });

  factory OrderItemsMaxOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$OrderItemsMaxOrderByAggregateInputFromJson(json);

  @JsonKey(name: r'customer_order_id')
  final SortOrder? customerOrderId;

  final SortOrder? amount;

  final SortOrder? price;

  @override
  Map<String, dynamic> toJson() =>
      _$OrderItemsMaxOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class OrderItemsMinOrderByAggregateInput implements _i1.JsonSerializable {
  const OrderItemsMinOrderByAggregateInput({
    this.customerOrderId,
    this.amount,
    this.price,
  });

  factory OrderItemsMinOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$OrderItemsMinOrderByAggregateInputFromJson(json);

  @JsonKey(name: r'customer_order_id')
  final SortOrder? customerOrderId;

  final SortOrder? amount;

  final SortOrder? price;

  @override
  Map<String, dynamic> toJson() =>
      _$OrderItemsMinOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class OrderItemsSumOrderByAggregateInput implements _i1.JsonSerializable {
  const OrderItemsSumOrderByAggregateInput({
    this.customerOrderId,
    this.amount,
    this.price,
  });

  factory OrderItemsSumOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$OrderItemsSumOrderByAggregateInputFromJson(json);

  @JsonKey(name: r'customer_order_id')
  final SortOrder? customerOrderId;

  final SortOrder? amount;

  final SortOrder? price;

  @override
  Map<String, dynamic> toJson() =>
      _$OrderItemsSumOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class StringFieldUpdateOperationsInput implements _i1.JsonSerializable {
  const StringFieldUpdateOperationsInput({this.set});

  factory StringFieldUpdateOperationsInput.fromJson(
          Map<String, dynamic> json) =>
      _$StringFieldUpdateOperationsInputFromJson(json);

  final String? set;

  @override
  Map<String, dynamic> toJson() =>
      _$StringFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class ProductCommentCreateNestedManyWithoutProductInput
    implements _i1.JsonSerializable {
  const ProductCommentCreateNestedManyWithoutProductInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  factory ProductCommentCreateNestedManyWithoutProductInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProductCommentCreateNestedManyWithoutProductInputFromJson(json);

  final Iterable<ProductCommentCreateWithoutProductInput>? create;

  final Iterable<ProductCommentCreateOrConnectWithoutProductInput>?
      connectOrCreate;

  final ProductCommentCreateManyProductInputEnvelope? createMany;

  final Iterable<ProductCommentWhereUniqueInput>? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$ProductCommentCreateNestedManyWithoutProductInputToJson(this);
}

@_i1.jsonSerializable
class ProductCommentUncheckedCreateNestedManyWithoutProductInput
    implements _i1.JsonSerializable {
  const ProductCommentUncheckedCreateNestedManyWithoutProductInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  factory ProductCommentUncheckedCreateNestedManyWithoutProductInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProductCommentUncheckedCreateNestedManyWithoutProductInputFromJson(
          json);

  final Iterable<ProductCommentCreateWithoutProductInput>? create;

  final Iterable<ProductCommentCreateOrConnectWithoutProductInput>?
      connectOrCreate;

  final ProductCommentCreateManyProductInputEnvelope? createMany;

  final Iterable<ProductCommentWhereUniqueInput>? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$ProductCommentUncheckedCreateNestedManyWithoutProductInputToJson(this);
}

@_i1.jsonSerializable
class IntFieldUpdateOperationsInput implements _i1.JsonSerializable {
  const IntFieldUpdateOperationsInput({
    this.set,
    this.increment,
    this.decrement,
    this.multiply,
    this.divide,
  });

  factory IntFieldUpdateOperationsInput.fromJson(Map<String, dynamic> json) =>
      _$IntFieldUpdateOperationsInputFromJson(json);

  final int? set;

  final int? increment;

  final int? decrement;

  final int? multiply;

  final int? divide;

  @override
  Map<String, dynamic> toJson() => _$IntFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class ProductCommentUpdateManyWithoutProductNestedInput
    implements _i1.JsonSerializable {
  const ProductCommentUpdateManyWithoutProductNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  factory ProductCommentUpdateManyWithoutProductNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProductCommentUpdateManyWithoutProductNestedInputFromJson(json);

  final Iterable<ProductCommentCreateWithoutProductInput>? create;

  final Iterable<ProductCommentCreateOrConnectWithoutProductInput>?
      connectOrCreate;

  final Iterable<ProductCommentUpsertWithWhereUniqueWithoutProductInput>?
      upsert;

  final ProductCommentCreateManyProductInputEnvelope? createMany;

  final Iterable<ProductCommentWhereUniqueInput>? set;

  final Iterable<ProductCommentWhereUniqueInput>? disconnect;

  final Iterable<ProductCommentWhereUniqueInput>? delete;

  final Iterable<ProductCommentWhereUniqueInput>? connect;

  final Iterable<ProductCommentUpdateWithWhereUniqueWithoutProductInput>?
      update;

  final Iterable<ProductCommentUpdateManyWithWhereWithoutProductInput>?
      updateMany;

  final Iterable<ProductCommentScalarWhereInput>? deleteMany;

  @override
  Map<String, dynamic> toJson() =>
      _$ProductCommentUpdateManyWithoutProductNestedInputToJson(this);
}

@_i1.jsonSerializable
class ProductCommentUncheckedUpdateManyWithoutProductNestedInput
    implements _i1.JsonSerializable {
  const ProductCommentUncheckedUpdateManyWithoutProductNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  factory ProductCommentUncheckedUpdateManyWithoutProductNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProductCommentUncheckedUpdateManyWithoutProductNestedInputFromJson(
          json);

  final Iterable<ProductCommentCreateWithoutProductInput>? create;

  final Iterable<ProductCommentCreateOrConnectWithoutProductInput>?
      connectOrCreate;

  final Iterable<ProductCommentUpsertWithWhereUniqueWithoutProductInput>?
      upsert;

  final ProductCommentCreateManyProductInputEnvelope? createMany;

  final Iterable<ProductCommentWhereUniqueInput>? set;

  final Iterable<ProductCommentWhereUniqueInput>? disconnect;

  final Iterable<ProductCommentWhereUniqueInput>? delete;

  final Iterable<ProductCommentWhereUniqueInput>? connect;

  final Iterable<ProductCommentUpdateWithWhereUniqueWithoutProductInput>?
      update;

  final Iterable<ProductCommentUpdateManyWithWhereWithoutProductInput>?
      updateMany;

  final Iterable<ProductCommentScalarWhereInput>? deleteMany;

  @override
  Map<String, dynamic> toJson() =>
      _$ProductCommentUncheckedUpdateManyWithoutProductNestedInputToJson(this);
}

@_i1.jsonSerializable
class ProductCreateNestedOneWithoutProductCommentsInput
    implements _i1.JsonSerializable {
  const ProductCreateNestedOneWithoutProductCommentsInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  factory ProductCreateNestedOneWithoutProductCommentsInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProductCreateNestedOneWithoutProductCommentsInputFromJson(json);

  final ProductCreateWithoutProductCommentsInput? create;

  final ProductCreateOrConnectWithoutProductCommentsInput? connectOrCreate;

  final ProductWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$ProductCreateNestedOneWithoutProductCommentsInputToJson(this);
}

@_i1.jsonSerializable
class FloatFieldUpdateOperationsInput implements _i1.JsonSerializable {
  const FloatFieldUpdateOperationsInput({
    this.set,
    this.increment,
    this.decrement,
    this.multiply,
    this.divide,
  });

  factory FloatFieldUpdateOperationsInput.fromJson(Map<String, dynamic> json) =>
      _$FloatFieldUpdateOperationsInputFromJson(json);

  final double? set;

  final double? increment;

  final double? decrement;

  final double? multiply;

  final double? divide;

  @override
  Map<String, dynamic> toJson() =>
      _$FloatFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class DateTimeFieldUpdateOperationsInput implements _i1.JsonSerializable {
  const DateTimeFieldUpdateOperationsInput({this.set});

  factory DateTimeFieldUpdateOperationsInput.fromJson(
          Map<String, dynamic> json) =>
      _$DateTimeFieldUpdateOperationsInputFromJson(json);

  final DateTime? set;

  @override
  Map<String, dynamic> toJson() =>
      _$DateTimeFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class ProductUpdateOneRequiredWithoutProductCommentsNestedInput
    implements _i1.JsonSerializable {
  const ProductUpdateOneRequiredWithoutProductCommentsNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  factory ProductUpdateOneRequiredWithoutProductCommentsNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProductUpdateOneRequiredWithoutProductCommentsNestedInputFromJson(json);

  final ProductCreateWithoutProductCommentsInput? create;

  final ProductCreateOrConnectWithoutProductCommentsInput? connectOrCreate;

  final ProductUpsertWithoutProductCommentsInput? upsert;

  final ProductWhereUniqueInput? connect;

  final ProductUpdateToOneWithWhereWithoutProductCommentsInput? update;

  @override
  Map<String, dynamic> toJson() =>
      _$ProductUpdateOneRequiredWithoutProductCommentsNestedInputToJson(this);
}

@_i1.jsonSerializable
class AddressCreateNestedManyWithoutCustomerOrderInput
    implements _i1.JsonSerializable {
  const AddressCreateNestedManyWithoutCustomerOrderInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  factory AddressCreateNestedManyWithoutCustomerOrderInput.fromJson(
          Map<String, dynamic> json) =>
      _$AddressCreateNestedManyWithoutCustomerOrderInputFromJson(json);

  final Iterable<AddressCreateWithoutCustomerOrderInput>? create;

  final Iterable<AddressCreateOrConnectWithoutCustomerOrderInput>?
      connectOrCreate;

  final AddressCreateManyCustomerOrderInputEnvelope? createMany;

  final Iterable<AddressWhereUniqueInput>? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$AddressCreateNestedManyWithoutCustomerOrderInputToJson(this);
}

@_i1.jsonSerializable
class OrderItemsCreateNestedManyWithoutCustomerOrderInput
    implements _i1.JsonSerializable {
  const OrderItemsCreateNestedManyWithoutCustomerOrderInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  factory OrderItemsCreateNestedManyWithoutCustomerOrderInput.fromJson(
          Map<String, dynamic> json) =>
      _$OrderItemsCreateNestedManyWithoutCustomerOrderInputFromJson(json);

  final Iterable<OrderItemsCreateWithoutCustomerOrderInput>? create;

  final Iterable<OrderItemsCreateOrConnectWithoutCustomerOrderInput>?
      connectOrCreate;

  final OrderItemsCreateManyCustomerOrderInputEnvelope? createMany;

  final Iterable<OrderItemsWhereUniqueInput>? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$OrderItemsCreateNestedManyWithoutCustomerOrderInputToJson(this);
}

@_i1.jsonSerializable
class AddressUncheckedCreateNestedManyWithoutCustomerOrderInput
    implements _i1.JsonSerializable {
  const AddressUncheckedCreateNestedManyWithoutCustomerOrderInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  factory AddressUncheckedCreateNestedManyWithoutCustomerOrderInput.fromJson(
          Map<String, dynamic> json) =>
      _$AddressUncheckedCreateNestedManyWithoutCustomerOrderInputFromJson(json);

  final Iterable<AddressCreateWithoutCustomerOrderInput>? create;

  final Iterable<AddressCreateOrConnectWithoutCustomerOrderInput>?
      connectOrCreate;

  final AddressCreateManyCustomerOrderInputEnvelope? createMany;

  final Iterable<AddressWhereUniqueInput>? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$AddressUncheckedCreateNestedManyWithoutCustomerOrderInputToJson(this);
}

@_i1.jsonSerializable
class OrderItemsUncheckedCreateNestedManyWithoutCustomerOrderInput
    implements _i1.JsonSerializable {
  const OrderItemsUncheckedCreateNestedManyWithoutCustomerOrderInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  factory OrderItemsUncheckedCreateNestedManyWithoutCustomerOrderInput.fromJson(
          Map<String, dynamic> json) =>
      _$OrderItemsUncheckedCreateNestedManyWithoutCustomerOrderInputFromJson(
          json);

  final Iterable<OrderItemsCreateWithoutCustomerOrderInput>? create;

  final Iterable<OrderItemsCreateOrConnectWithoutCustomerOrderInput>?
      connectOrCreate;

  final OrderItemsCreateManyCustomerOrderInputEnvelope? createMany;

  final Iterable<OrderItemsWhereUniqueInput>? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$OrderItemsUncheckedCreateNestedManyWithoutCustomerOrderInputToJson(
          this);
}

@_i1.jsonSerializable
class AddressUpdateManyWithoutCustomerOrderNestedInput
    implements _i1.JsonSerializable {
  const AddressUpdateManyWithoutCustomerOrderNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  factory AddressUpdateManyWithoutCustomerOrderNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$AddressUpdateManyWithoutCustomerOrderNestedInputFromJson(json);

  final Iterable<AddressCreateWithoutCustomerOrderInput>? create;

  final Iterable<AddressCreateOrConnectWithoutCustomerOrderInput>?
      connectOrCreate;

  final Iterable<AddressUpsertWithWhereUniqueWithoutCustomerOrderInput>? upsert;

  final AddressCreateManyCustomerOrderInputEnvelope? createMany;

  final Iterable<AddressWhereUniqueInput>? set;

  final Iterable<AddressWhereUniqueInput>? disconnect;

  final Iterable<AddressWhereUniqueInput>? delete;

  final Iterable<AddressWhereUniqueInput>? connect;

  final Iterable<AddressUpdateWithWhereUniqueWithoutCustomerOrderInput>? update;

  final Iterable<AddressUpdateManyWithWhereWithoutCustomerOrderInput>?
      updateMany;

  final Iterable<AddressScalarWhereInput>? deleteMany;

  @override
  Map<String, dynamic> toJson() =>
      _$AddressUpdateManyWithoutCustomerOrderNestedInputToJson(this);
}

@_i1.jsonSerializable
class OrderItemsUpdateManyWithoutCustomerOrderNestedInput
    implements _i1.JsonSerializable {
  const OrderItemsUpdateManyWithoutCustomerOrderNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  factory OrderItemsUpdateManyWithoutCustomerOrderNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$OrderItemsUpdateManyWithoutCustomerOrderNestedInputFromJson(json);

  final Iterable<OrderItemsCreateWithoutCustomerOrderInput>? create;

  final Iterable<OrderItemsCreateOrConnectWithoutCustomerOrderInput>?
      connectOrCreate;

  final Iterable<OrderItemsUpsertWithWhereUniqueWithoutCustomerOrderInput>?
      upsert;

  final OrderItemsCreateManyCustomerOrderInputEnvelope? createMany;

  final Iterable<OrderItemsWhereUniqueInput>? set;

  final Iterable<OrderItemsWhereUniqueInput>? disconnect;

  final Iterable<OrderItemsWhereUniqueInput>? delete;

  final Iterable<OrderItemsWhereUniqueInput>? connect;

  final Iterable<OrderItemsUpdateWithWhereUniqueWithoutCustomerOrderInput>?
      update;

  final Iterable<OrderItemsUpdateManyWithWhereWithoutCustomerOrderInput>?
      updateMany;

  final Iterable<OrderItemsScalarWhereInput>? deleteMany;

  @override
  Map<String, dynamic> toJson() =>
      _$OrderItemsUpdateManyWithoutCustomerOrderNestedInputToJson(this);
}

@_i1.jsonSerializable
class AddressUncheckedUpdateManyWithoutCustomerOrderNestedInput
    implements _i1.JsonSerializable {
  const AddressUncheckedUpdateManyWithoutCustomerOrderNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  factory AddressUncheckedUpdateManyWithoutCustomerOrderNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$AddressUncheckedUpdateManyWithoutCustomerOrderNestedInputFromJson(json);

  final Iterable<AddressCreateWithoutCustomerOrderInput>? create;

  final Iterable<AddressCreateOrConnectWithoutCustomerOrderInput>?
      connectOrCreate;

  final Iterable<AddressUpsertWithWhereUniqueWithoutCustomerOrderInput>? upsert;

  final AddressCreateManyCustomerOrderInputEnvelope? createMany;

  final Iterable<AddressWhereUniqueInput>? set;

  final Iterable<AddressWhereUniqueInput>? disconnect;

  final Iterable<AddressWhereUniqueInput>? delete;

  final Iterable<AddressWhereUniqueInput>? connect;

  final Iterable<AddressUpdateWithWhereUniqueWithoutCustomerOrderInput>? update;

  final Iterable<AddressUpdateManyWithWhereWithoutCustomerOrderInput>?
      updateMany;

  final Iterable<AddressScalarWhereInput>? deleteMany;

  @override
  Map<String, dynamic> toJson() =>
      _$AddressUncheckedUpdateManyWithoutCustomerOrderNestedInputToJson(this);
}

@_i1.jsonSerializable
class OrderItemsUncheckedUpdateManyWithoutCustomerOrderNestedInput
    implements _i1.JsonSerializable {
  const OrderItemsUncheckedUpdateManyWithoutCustomerOrderNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  factory OrderItemsUncheckedUpdateManyWithoutCustomerOrderNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$OrderItemsUncheckedUpdateManyWithoutCustomerOrderNestedInputFromJson(
          json);

  final Iterable<OrderItemsCreateWithoutCustomerOrderInput>? create;

  final Iterable<OrderItemsCreateOrConnectWithoutCustomerOrderInput>?
      connectOrCreate;

  final Iterable<OrderItemsUpsertWithWhereUniqueWithoutCustomerOrderInput>?
      upsert;

  final OrderItemsCreateManyCustomerOrderInputEnvelope? createMany;

  final Iterable<OrderItemsWhereUniqueInput>? set;

  final Iterable<OrderItemsWhereUniqueInput>? disconnect;

  final Iterable<OrderItemsWhereUniqueInput>? delete;

  final Iterable<OrderItemsWhereUniqueInput>? connect;

  final Iterable<OrderItemsUpdateWithWhereUniqueWithoutCustomerOrderInput>?
      update;

  final Iterable<OrderItemsUpdateManyWithWhereWithoutCustomerOrderInput>?
      updateMany;

  final Iterable<OrderItemsScalarWhereInput>? deleteMany;

  @override
  Map<String, dynamic> toJson() =>
      _$OrderItemsUncheckedUpdateManyWithoutCustomerOrderNestedInputToJson(
          this);
}

@_i1.jsonSerializable
class CustomerOrderCreateNestedOneWithoutAddressInput
    implements _i1.JsonSerializable {
  const CustomerOrderCreateNestedOneWithoutAddressInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  factory CustomerOrderCreateNestedOneWithoutAddressInput.fromJson(
          Map<String, dynamic> json) =>
      _$CustomerOrderCreateNestedOneWithoutAddressInputFromJson(json);

  final CustomerOrderCreateWithoutAddressInput? create;

  final CustomerOrderCreateOrConnectWithoutAddressInput? connectOrCreate;

  final CustomerOrderWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$CustomerOrderCreateNestedOneWithoutAddressInputToJson(this);
}

@_i1.jsonSerializable
class CustomerOrderUpdateOneRequiredWithoutAddressNestedInput
    implements _i1.JsonSerializable {
  const CustomerOrderUpdateOneRequiredWithoutAddressNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  factory CustomerOrderUpdateOneRequiredWithoutAddressNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$CustomerOrderUpdateOneRequiredWithoutAddressNestedInputFromJson(json);

  final CustomerOrderCreateWithoutAddressInput? create;

  final CustomerOrderCreateOrConnectWithoutAddressInput? connectOrCreate;

  final CustomerOrderUpsertWithoutAddressInput? upsert;

  final CustomerOrderWhereUniqueInput? connect;

  final CustomerOrderUpdateToOneWithWhereWithoutAddressInput? update;

  @override
  Map<String, dynamic> toJson() =>
      _$CustomerOrderUpdateOneRequiredWithoutAddressNestedInputToJson(this);
}

@_i1.jsonSerializable
class CustomerOrderCreateNestedOneWithoutOrderItemsInput
    implements _i1.JsonSerializable {
  const CustomerOrderCreateNestedOneWithoutOrderItemsInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  factory CustomerOrderCreateNestedOneWithoutOrderItemsInput.fromJson(
          Map<String, dynamic> json) =>
      _$CustomerOrderCreateNestedOneWithoutOrderItemsInputFromJson(json);

  final CustomerOrderCreateWithoutOrderItemsInput? create;

  final CustomerOrderCreateOrConnectWithoutOrderItemsInput? connectOrCreate;

  final CustomerOrderWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$CustomerOrderCreateNestedOneWithoutOrderItemsInputToJson(this);
}

@_i1.jsonSerializable
class CustomerOrderUpdateOneRequiredWithoutOrderItemsNestedInput
    implements _i1.JsonSerializable {
  const CustomerOrderUpdateOneRequiredWithoutOrderItemsNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  factory CustomerOrderUpdateOneRequiredWithoutOrderItemsNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$CustomerOrderUpdateOneRequiredWithoutOrderItemsNestedInputFromJson(
          json);

  final CustomerOrderCreateWithoutOrderItemsInput? create;

  final CustomerOrderCreateOrConnectWithoutOrderItemsInput? connectOrCreate;

  final CustomerOrderUpsertWithoutOrderItemsInput? upsert;

  final CustomerOrderWhereUniqueInput? connect;

  final CustomerOrderUpdateToOneWithWhereWithoutOrderItemsInput? update;

  @override
  Map<String, dynamic> toJson() =>
      _$CustomerOrderUpdateOneRequiredWithoutOrderItemsNestedInputToJson(this);
}

@_i1.jsonSerializable
class NestedUuidFilter implements _i1.JsonSerializable {
  const NestedUuidFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedUuidFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedUuidFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final NestedUuidFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedUuidFilterToJson(this);
}

@_i1.jsonSerializable
class NestedStringFilter implements _i1.JsonSerializable {
  const NestedStringFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
  });

  factory NestedStringFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedStringFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final NestedStringFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedStringFilterToJson(this);
}

@_i1.jsonSerializable
class NestedUuidWithAggregatesFilter implements _i1.JsonSerializable {
  const NestedUuidWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory NestedUuidWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedUuidWithAggregatesFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final NestedUuidWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_min')
  final NestedStringFilter? $min;

  @JsonKey(name: r'_max')
  final NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$NestedUuidWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class NestedIntFilter implements _i1.JsonSerializable {
  const NestedIntFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedIntFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedIntFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedIntFilterToJson(this);
}

@_i1.jsonSerializable
class NestedStringWithAggregatesFilter implements _i1.JsonSerializable {
  const NestedStringWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory NestedStringWithAggregatesFilter.fromJson(
          Map<String, dynamic> json) =>
      _$NestedStringWithAggregatesFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final NestedStringWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_min')
  final NestedStringFilter? $min;

  @JsonKey(name: r'_max')
  final NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$NestedStringWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class NestedIntWithAggregatesFilter implements _i1.JsonSerializable {
  const NestedIntWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory NestedIntWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedIntWithAggregatesFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_avg')
  final NestedFloatFilter? $avg;

  @JsonKey(name: r'_sum')
  final NestedIntFilter? $sum;

  @JsonKey(name: r'_min')
  final NestedIntFilter? $min;

  @JsonKey(name: r'_max')
  final NestedIntFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$NestedIntWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class NestedFloatFilter implements _i1.JsonSerializable {
  const NestedFloatFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedFloatFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedFloatFilterFromJson(json);

  final double? equals;

  @JsonKey(name: r'in')
  final Iterable<double>? $in;

  final Iterable<double>? notIn;

  final double? lt;

  final double? lte;

  final double? gt;

  final double? gte;

  final NestedFloatFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedFloatFilterToJson(this);
}

@_i1.jsonSerializable
class NestedDateTimeFilter implements _i1.JsonSerializable {
  const NestedDateTimeFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedDateTimeFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedDateTimeFilterFromJson(json);

  final DateTime? equals;

  @JsonKey(name: r'in')
  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final DateTime? lt;

  final DateTime? lte;

  final DateTime? gt;

  final DateTime? gte;

  final NestedDateTimeFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedDateTimeFilterToJson(this);
}

@_i1.jsonSerializable
class NestedFloatWithAggregatesFilter implements _i1.JsonSerializable {
  const NestedFloatWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory NestedFloatWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedFloatWithAggregatesFilterFromJson(json);

  final double? equals;

  @JsonKey(name: r'in')
  final Iterable<double>? $in;

  final Iterable<double>? notIn;

  final double? lt;

  final double? lte;

  final double? gt;

  final double? gte;

  final NestedFloatWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_avg')
  final NestedFloatFilter? $avg;

  @JsonKey(name: r'_sum')
  final NestedFloatFilter? $sum;

  @JsonKey(name: r'_min')
  final NestedFloatFilter? $min;

  @JsonKey(name: r'_max')
  final NestedFloatFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$NestedFloatWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class NestedDateTimeWithAggregatesFilter implements _i1.JsonSerializable {
  const NestedDateTimeWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory NestedDateTimeWithAggregatesFilter.fromJson(
          Map<String, dynamic> json) =>
      _$NestedDateTimeWithAggregatesFilterFromJson(json);

  final DateTime? equals;

  @JsonKey(name: r'in')
  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final DateTime? lt;

  final DateTime? lte;

  final DateTime? gt;

  final DateTime? gte;

  final NestedDateTimeWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_min')
  final NestedDateTimeFilter? $min;

  @JsonKey(name: r'_max')
  final NestedDateTimeFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$NestedDateTimeWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class ProductCommentCreateWithoutProductInput implements _i1.JsonSerializable {
  const ProductCommentCreateWithoutProductInput({
    this.id,
    required this.username,
    required this.ratings,
    required this.email,
    required this.comment,
    required this.created,
  });

  factory ProductCommentCreateWithoutProductInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProductCommentCreateWithoutProductInputFromJson(json);

  final String? id;

  final String username;

  final double ratings;

  final String email;

  final String comment;

  final DateTime created;

  @override
  Map<String, dynamic> toJson() =>
      _$ProductCommentCreateWithoutProductInputToJson(this);
}

@_i1.jsonSerializable
class ProductCommentUncheckedCreateWithoutProductInput
    implements _i1.JsonSerializable {
  const ProductCommentUncheckedCreateWithoutProductInput({
    this.id,
    required this.username,
    required this.ratings,
    required this.email,
    required this.comment,
    required this.created,
  });

  factory ProductCommentUncheckedCreateWithoutProductInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProductCommentUncheckedCreateWithoutProductInputFromJson(json);

  final String? id;

  final String username;

  final double ratings;

  final String email;

  final String comment;

  final DateTime created;

  @override
  Map<String, dynamic> toJson() =>
      _$ProductCommentUncheckedCreateWithoutProductInputToJson(this);
}

@_i1.jsonSerializable
class ProductCommentCreateOrConnectWithoutProductInput
    implements _i1.JsonSerializable {
  const ProductCommentCreateOrConnectWithoutProductInput({
    required this.where,
    required this.create,
  });

  factory ProductCommentCreateOrConnectWithoutProductInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProductCommentCreateOrConnectWithoutProductInputFromJson(json);

  final ProductCommentWhereUniqueInput where;

  final ProductCommentCreateWithoutProductInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$ProductCommentCreateOrConnectWithoutProductInputToJson(this);
}

@_i1.jsonSerializable
class ProductCommentCreateManyProductInputEnvelope
    implements _i1.JsonSerializable {
  const ProductCommentCreateManyProductInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  factory ProductCommentCreateManyProductInputEnvelope.fromJson(
          Map<String, dynamic> json) =>
      _$ProductCommentCreateManyProductInputEnvelopeFromJson(json);

  final Iterable<ProductCommentCreateManyProductInput> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() =>
      _$ProductCommentCreateManyProductInputEnvelopeToJson(this);
}

@_i1.jsonSerializable
class ProductCommentUpsertWithWhereUniqueWithoutProductInput
    implements _i1.JsonSerializable {
  const ProductCommentUpsertWithWhereUniqueWithoutProductInput({
    required this.where,
    required this.update,
    required this.create,
  });

  factory ProductCommentUpsertWithWhereUniqueWithoutProductInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProductCommentUpsertWithWhereUniqueWithoutProductInputFromJson(json);

  final ProductCommentWhereUniqueInput where;

  final ProductCommentUpdateWithoutProductInput update;

  final ProductCommentCreateWithoutProductInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$ProductCommentUpsertWithWhereUniqueWithoutProductInputToJson(this);
}

@_i1.jsonSerializable
class ProductCommentUpdateWithWhereUniqueWithoutProductInput
    implements _i1.JsonSerializable {
  const ProductCommentUpdateWithWhereUniqueWithoutProductInput({
    required this.where,
    required this.data,
  });

  factory ProductCommentUpdateWithWhereUniqueWithoutProductInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProductCommentUpdateWithWhereUniqueWithoutProductInputFromJson(json);

  final ProductCommentWhereUniqueInput where;

  final ProductCommentUpdateWithoutProductInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$ProductCommentUpdateWithWhereUniqueWithoutProductInputToJson(this);
}

@_i1.jsonSerializable
class ProductCommentUpdateManyWithWhereWithoutProductInput
    implements _i1.JsonSerializable {
  const ProductCommentUpdateManyWithWhereWithoutProductInput({
    required this.where,
    required this.data,
  });

  factory ProductCommentUpdateManyWithWhereWithoutProductInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProductCommentUpdateManyWithWhereWithoutProductInputFromJson(json);

  final ProductCommentScalarWhereInput where;

  final ProductCommentUpdateManyMutationInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$ProductCommentUpdateManyWithWhereWithoutProductInputToJson(this);
}

@_i1.jsonSerializable
class ProductCommentScalarWhereInput implements _i1.JsonSerializable {
  const ProductCommentScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.productId,
    this.username,
    this.ratings,
    this.email,
    this.comment,
    this.created,
  });

  factory ProductCommentScalarWhereInput.fromJson(Map<String, dynamic> json) =>
      _$ProductCommentScalarWhereInputFromJson(json);

  final Iterable<ProductCommentScalarWhereInput>? AND;

  final Iterable<ProductCommentScalarWhereInput>? OR;

  final Iterable<ProductCommentScalarWhereInput>? NOT;

  final UuidFilter? id;

  final UuidFilter? productId;

  final StringFilter? username;

  final FloatFilter? ratings;

  final StringFilter? email;

  final StringFilter? comment;

  final DateTimeFilter? created;

  @override
  Map<String, dynamic> toJson() => _$ProductCommentScalarWhereInputToJson(this);
}

@_i1.jsonSerializable
class ProductCreateWithoutProductCommentsInput implements _i1.JsonSerializable {
  const ProductCreateWithoutProductCommentsInput({
    this.id,
    required this.name,
    required this.description,
    required this.imgUrl,
    required this.price,
  });

  factory ProductCreateWithoutProductCommentsInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProductCreateWithoutProductCommentsInputFromJson(json);

  final String? id;

  final String name;

  final String description;

  @JsonKey(name: r'img_url')
  final String imgUrl;

  final int price;

  @override
  Map<String, dynamic> toJson() =>
      _$ProductCreateWithoutProductCommentsInputToJson(this);
}

@_i1.jsonSerializable
class ProductUncheckedCreateWithoutProductCommentsInput
    implements _i1.JsonSerializable {
  const ProductUncheckedCreateWithoutProductCommentsInput({
    this.id,
    required this.name,
    required this.description,
    required this.imgUrl,
    required this.price,
  });

  factory ProductUncheckedCreateWithoutProductCommentsInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProductUncheckedCreateWithoutProductCommentsInputFromJson(json);

  final String? id;

  final String name;

  final String description;

  @JsonKey(name: r'img_url')
  final String imgUrl;

  final int price;

  @override
  Map<String, dynamic> toJson() =>
      _$ProductUncheckedCreateWithoutProductCommentsInputToJson(this);
}

@_i1.jsonSerializable
class ProductCreateOrConnectWithoutProductCommentsInput
    implements _i1.JsonSerializable {
  const ProductCreateOrConnectWithoutProductCommentsInput({
    required this.where,
    required this.create,
  });

  factory ProductCreateOrConnectWithoutProductCommentsInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProductCreateOrConnectWithoutProductCommentsInputFromJson(json);

  final ProductWhereUniqueInput where;

  final ProductCreateWithoutProductCommentsInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$ProductCreateOrConnectWithoutProductCommentsInputToJson(this);
}

@_i1.jsonSerializable
class ProductUpsertWithoutProductCommentsInput implements _i1.JsonSerializable {
  const ProductUpsertWithoutProductCommentsInput({
    required this.update,
    required this.create,
    this.where,
  });

  factory ProductUpsertWithoutProductCommentsInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProductUpsertWithoutProductCommentsInputFromJson(json);

  final ProductUpdateWithoutProductCommentsInput update;

  final ProductCreateWithoutProductCommentsInput create;

  final ProductWhereInput? where;

  @override
  Map<String, dynamic> toJson() =>
      _$ProductUpsertWithoutProductCommentsInputToJson(this);
}

@_i1.jsonSerializable
class ProductUpdateToOneWithWhereWithoutProductCommentsInput
    implements _i1.JsonSerializable {
  const ProductUpdateToOneWithWhereWithoutProductCommentsInput({
    this.where,
    required this.data,
  });

  factory ProductUpdateToOneWithWhereWithoutProductCommentsInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProductUpdateToOneWithWhereWithoutProductCommentsInputFromJson(json);

  final ProductWhereInput? where;

  final ProductUpdateWithoutProductCommentsInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$ProductUpdateToOneWithWhereWithoutProductCommentsInputToJson(this);
}

@_i1.jsonSerializable
class ProductUpdateWithoutProductCommentsInput implements _i1.JsonSerializable {
  const ProductUpdateWithoutProductCommentsInput({
    this.id,
    this.name,
    this.description,
    this.imgUrl,
    this.price,
  });

  factory ProductUpdateWithoutProductCommentsInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProductUpdateWithoutProductCommentsInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? name;

  final StringFieldUpdateOperationsInput? description;

  @JsonKey(name: r'img_url')
  final StringFieldUpdateOperationsInput? imgUrl;

  final IntFieldUpdateOperationsInput? price;

  @override
  Map<String, dynamic> toJson() =>
      _$ProductUpdateWithoutProductCommentsInputToJson(this);
}

@_i1.jsonSerializable
class ProductUncheckedUpdateWithoutProductCommentsInput
    implements _i1.JsonSerializable {
  const ProductUncheckedUpdateWithoutProductCommentsInput({
    this.id,
    this.name,
    this.description,
    this.imgUrl,
    this.price,
  });

  factory ProductUncheckedUpdateWithoutProductCommentsInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProductUncheckedUpdateWithoutProductCommentsInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? name;

  final StringFieldUpdateOperationsInput? description;

  @JsonKey(name: r'img_url')
  final StringFieldUpdateOperationsInput? imgUrl;

  final IntFieldUpdateOperationsInput? price;

  @override
  Map<String, dynamic> toJson() =>
      _$ProductUncheckedUpdateWithoutProductCommentsInputToJson(this);
}

@_i1.jsonSerializable
class AddressCreateWithoutCustomerOrderInput implements _i1.JsonSerializable {
  const AddressCreateWithoutCustomerOrderInput({
    required this.street,
    required this.district,
    required this.number,
    required this.city,
  });

  factory AddressCreateWithoutCustomerOrderInput.fromJson(
          Map<String, dynamic> json) =>
      _$AddressCreateWithoutCustomerOrderInputFromJson(json);

  final String street;

  final String district;

  final int number;

  final String city;

  @override
  Map<String, dynamic> toJson() =>
      _$AddressCreateWithoutCustomerOrderInputToJson(this);
}

@_i1.jsonSerializable
class AddressUncheckedCreateWithoutCustomerOrderInput
    implements _i1.JsonSerializable {
  const AddressUncheckedCreateWithoutCustomerOrderInput({
    required this.street,
    required this.district,
    required this.number,
    required this.city,
  });

  factory AddressUncheckedCreateWithoutCustomerOrderInput.fromJson(
          Map<String, dynamic> json) =>
      _$AddressUncheckedCreateWithoutCustomerOrderInputFromJson(json);

  final String street;

  final String district;

  final int number;

  final String city;

  @override
  Map<String, dynamic> toJson() =>
      _$AddressUncheckedCreateWithoutCustomerOrderInputToJson(this);
}

@_i1.jsonSerializable
class AddressCreateOrConnectWithoutCustomerOrderInput
    implements _i1.JsonSerializable {
  const AddressCreateOrConnectWithoutCustomerOrderInput({
    required this.where,
    required this.create,
  });

  factory AddressCreateOrConnectWithoutCustomerOrderInput.fromJson(
          Map<String, dynamic> json) =>
      _$AddressCreateOrConnectWithoutCustomerOrderInputFromJson(json);

  final AddressWhereUniqueInput where;

  final AddressCreateWithoutCustomerOrderInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$AddressCreateOrConnectWithoutCustomerOrderInputToJson(this);
}

@_i1.jsonSerializable
class AddressCreateManyCustomerOrderInputEnvelope
    implements _i1.JsonSerializable {
  const AddressCreateManyCustomerOrderInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  factory AddressCreateManyCustomerOrderInputEnvelope.fromJson(
          Map<String, dynamic> json) =>
      _$AddressCreateManyCustomerOrderInputEnvelopeFromJson(json);

  final Iterable<AddressCreateManyCustomerOrderInput> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() =>
      _$AddressCreateManyCustomerOrderInputEnvelopeToJson(this);
}

@_i1.jsonSerializable
class OrderItemsCreateWithoutCustomerOrderInput
    implements _i1.JsonSerializable {
  const OrderItemsCreateWithoutCustomerOrderInput({
    required this.amount,
    required this.price,
  });

  factory OrderItemsCreateWithoutCustomerOrderInput.fromJson(
          Map<String, dynamic> json) =>
      _$OrderItemsCreateWithoutCustomerOrderInputFromJson(json);

  final int amount;

  final int price;

  @override
  Map<String, dynamic> toJson() =>
      _$OrderItemsCreateWithoutCustomerOrderInputToJson(this);
}

@_i1.jsonSerializable
class OrderItemsUncheckedCreateWithoutCustomerOrderInput
    implements _i1.JsonSerializable {
  const OrderItemsUncheckedCreateWithoutCustomerOrderInput({
    required this.amount,
    required this.price,
  });

  factory OrderItemsUncheckedCreateWithoutCustomerOrderInput.fromJson(
          Map<String, dynamic> json) =>
      _$OrderItemsUncheckedCreateWithoutCustomerOrderInputFromJson(json);

  final int amount;

  final int price;

  @override
  Map<String, dynamic> toJson() =>
      _$OrderItemsUncheckedCreateWithoutCustomerOrderInputToJson(this);
}

@_i1.jsonSerializable
class OrderItemsCreateOrConnectWithoutCustomerOrderInput
    implements _i1.JsonSerializable {
  const OrderItemsCreateOrConnectWithoutCustomerOrderInput({
    required this.where,
    required this.create,
  });

  factory OrderItemsCreateOrConnectWithoutCustomerOrderInput.fromJson(
          Map<String, dynamic> json) =>
      _$OrderItemsCreateOrConnectWithoutCustomerOrderInputFromJson(json);

  final OrderItemsWhereUniqueInput where;

  final OrderItemsCreateWithoutCustomerOrderInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$OrderItemsCreateOrConnectWithoutCustomerOrderInputToJson(this);
}

@_i1.jsonSerializable
class OrderItemsCreateManyCustomerOrderInputEnvelope
    implements _i1.JsonSerializable {
  const OrderItemsCreateManyCustomerOrderInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  factory OrderItemsCreateManyCustomerOrderInputEnvelope.fromJson(
          Map<String, dynamic> json) =>
      _$OrderItemsCreateManyCustomerOrderInputEnvelopeFromJson(json);

  final Iterable<OrderItemsCreateManyCustomerOrderInput> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() =>
      _$OrderItemsCreateManyCustomerOrderInputEnvelopeToJson(this);
}

@_i1.jsonSerializable
class AddressUpsertWithWhereUniqueWithoutCustomerOrderInput
    implements _i1.JsonSerializable {
  const AddressUpsertWithWhereUniqueWithoutCustomerOrderInput({
    required this.where,
    required this.update,
    required this.create,
  });

  factory AddressUpsertWithWhereUniqueWithoutCustomerOrderInput.fromJson(
          Map<String, dynamic> json) =>
      _$AddressUpsertWithWhereUniqueWithoutCustomerOrderInputFromJson(json);

  final AddressWhereUniqueInput where;

  final AddressUpdateWithoutCustomerOrderInput update;

  final AddressCreateWithoutCustomerOrderInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$AddressUpsertWithWhereUniqueWithoutCustomerOrderInputToJson(this);
}

@_i1.jsonSerializable
class AddressUpdateWithWhereUniqueWithoutCustomerOrderInput
    implements _i1.JsonSerializable {
  const AddressUpdateWithWhereUniqueWithoutCustomerOrderInput({
    required this.where,
    required this.data,
  });

  factory AddressUpdateWithWhereUniqueWithoutCustomerOrderInput.fromJson(
          Map<String, dynamic> json) =>
      _$AddressUpdateWithWhereUniqueWithoutCustomerOrderInputFromJson(json);

  final AddressWhereUniqueInput where;

  final AddressUpdateWithoutCustomerOrderInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$AddressUpdateWithWhereUniqueWithoutCustomerOrderInputToJson(this);
}

@_i1.jsonSerializable
class AddressUpdateManyWithWhereWithoutCustomerOrderInput
    implements _i1.JsonSerializable {
  const AddressUpdateManyWithWhereWithoutCustomerOrderInput({
    required this.where,
    required this.data,
  });

  factory AddressUpdateManyWithWhereWithoutCustomerOrderInput.fromJson(
          Map<String, dynamic> json) =>
      _$AddressUpdateManyWithWhereWithoutCustomerOrderInputFromJson(json);

  final AddressScalarWhereInput where;

  final AddressUpdateManyMutationInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$AddressUpdateManyWithWhereWithoutCustomerOrderInputToJson(this);
}

@_i1.jsonSerializable
class AddressScalarWhereInput implements _i1.JsonSerializable {
  const AddressScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.street,
    this.district,
    this.number,
    this.city,
    this.customerOrderId,
  });

  factory AddressScalarWhereInput.fromJson(Map<String, dynamic> json) =>
      _$AddressScalarWhereInputFromJson(json);

  final Iterable<AddressScalarWhereInput>? AND;

  final Iterable<AddressScalarWhereInput>? OR;

  final Iterable<AddressScalarWhereInput>? NOT;

  final StringFilter? street;

  final StringFilter? district;

  final IntFilter? number;

  final StringFilter? city;

  @JsonKey(name: r'customer_order_id')
  final IntFilter? customerOrderId;

  @override
  Map<String, dynamic> toJson() => _$AddressScalarWhereInputToJson(this);
}

@_i1.jsonSerializable
class OrderItemsUpsertWithWhereUniqueWithoutCustomerOrderInput
    implements _i1.JsonSerializable {
  const OrderItemsUpsertWithWhereUniqueWithoutCustomerOrderInput({
    required this.where,
    required this.update,
    required this.create,
  });

  factory OrderItemsUpsertWithWhereUniqueWithoutCustomerOrderInput.fromJson(
          Map<String, dynamic> json) =>
      _$OrderItemsUpsertWithWhereUniqueWithoutCustomerOrderInputFromJson(json);

  final OrderItemsWhereUniqueInput where;

  final OrderItemsUpdateWithoutCustomerOrderInput update;

  final OrderItemsCreateWithoutCustomerOrderInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$OrderItemsUpsertWithWhereUniqueWithoutCustomerOrderInputToJson(this);
}

@_i1.jsonSerializable
class OrderItemsUpdateWithWhereUniqueWithoutCustomerOrderInput
    implements _i1.JsonSerializable {
  const OrderItemsUpdateWithWhereUniqueWithoutCustomerOrderInput({
    required this.where,
    required this.data,
  });

  factory OrderItemsUpdateWithWhereUniqueWithoutCustomerOrderInput.fromJson(
          Map<String, dynamic> json) =>
      _$OrderItemsUpdateWithWhereUniqueWithoutCustomerOrderInputFromJson(json);

  final OrderItemsWhereUniqueInput where;

  final OrderItemsUpdateWithoutCustomerOrderInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$OrderItemsUpdateWithWhereUniqueWithoutCustomerOrderInputToJson(this);
}

@_i1.jsonSerializable
class OrderItemsUpdateManyWithWhereWithoutCustomerOrderInput
    implements _i1.JsonSerializable {
  const OrderItemsUpdateManyWithWhereWithoutCustomerOrderInput({
    required this.where,
    required this.data,
  });

  factory OrderItemsUpdateManyWithWhereWithoutCustomerOrderInput.fromJson(
          Map<String, dynamic> json) =>
      _$OrderItemsUpdateManyWithWhereWithoutCustomerOrderInputFromJson(json);

  final OrderItemsScalarWhereInput where;

  final OrderItemsUpdateManyMutationInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$OrderItemsUpdateManyWithWhereWithoutCustomerOrderInputToJson(this);
}

@_i1.jsonSerializable
class OrderItemsScalarWhereInput implements _i1.JsonSerializable {
  const OrderItemsScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.customerOrderId,
    this.amount,
    this.price,
  });

  factory OrderItemsScalarWhereInput.fromJson(Map<String, dynamic> json) =>
      _$OrderItemsScalarWhereInputFromJson(json);

  final Iterable<OrderItemsScalarWhereInput>? AND;

  final Iterable<OrderItemsScalarWhereInput>? OR;

  final Iterable<OrderItemsScalarWhereInput>? NOT;

  @JsonKey(name: r'customer_order_id')
  final IntFilter? customerOrderId;

  final IntFilter? amount;

  final IntFilter? price;

  @override
  Map<String, dynamic> toJson() => _$OrderItemsScalarWhereInputToJson(this);
}

@_i1.jsonSerializable
class CustomerOrderCreateWithoutAddressInput implements _i1.JsonSerializable {
  const CustomerOrderCreateWithoutAddressInput({
    required this.customerName,
    required this.status,
    required this.totalPrice,
    required this.created,
    this.orderItems,
  });

  factory CustomerOrderCreateWithoutAddressInput.fromJson(
          Map<String, dynamic> json) =>
      _$CustomerOrderCreateWithoutAddressInputFromJson(json);

  @JsonKey(name: r'customer_name')
  final String customerName;

  final String status;

  final int totalPrice;

  final DateTime created;

  final OrderItemsCreateNestedManyWithoutCustomerOrderInput? orderItems;

  @override
  Map<String, dynamic> toJson() =>
      _$CustomerOrderCreateWithoutAddressInputToJson(this);
}

@_i1.jsonSerializable
class CustomerOrderUncheckedCreateWithoutAddressInput
    implements _i1.JsonSerializable {
  const CustomerOrderUncheckedCreateWithoutAddressInput({
    this.id,
    required this.customerName,
    required this.status,
    required this.totalPrice,
    required this.created,
    this.orderItems,
  });

  factory CustomerOrderUncheckedCreateWithoutAddressInput.fromJson(
          Map<String, dynamic> json) =>
      _$CustomerOrderUncheckedCreateWithoutAddressInputFromJson(json);

  final int? id;

  @JsonKey(name: r'customer_name')
  final String customerName;

  final String status;

  final int totalPrice;

  final DateTime created;

  final OrderItemsUncheckedCreateNestedManyWithoutCustomerOrderInput?
      orderItems;

  @override
  Map<String, dynamic> toJson() =>
      _$CustomerOrderUncheckedCreateWithoutAddressInputToJson(this);
}

@_i1.jsonSerializable
class CustomerOrderCreateOrConnectWithoutAddressInput
    implements _i1.JsonSerializable {
  const CustomerOrderCreateOrConnectWithoutAddressInput({
    required this.where,
    required this.create,
  });

  factory CustomerOrderCreateOrConnectWithoutAddressInput.fromJson(
          Map<String, dynamic> json) =>
      _$CustomerOrderCreateOrConnectWithoutAddressInputFromJson(json);

  final CustomerOrderWhereUniqueInput where;

  final CustomerOrderCreateWithoutAddressInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$CustomerOrderCreateOrConnectWithoutAddressInputToJson(this);
}

@_i1.jsonSerializable
class CustomerOrderUpsertWithoutAddressInput implements _i1.JsonSerializable {
  const CustomerOrderUpsertWithoutAddressInput({
    required this.update,
    required this.create,
    this.where,
  });

  factory CustomerOrderUpsertWithoutAddressInput.fromJson(
          Map<String, dynamic> json) =>
      _$CustomerOrderUpsertWithoutAddressInputFromJson(json);

  final CustomerOrderUpdateWithoutAddressInput update;

  final CustomerOrderCreateWithoutAddressInput create;

  final CustomerOrderWhereInput? where;

  @override
  Map<String, dynamic> toJson() =>
      _$CustomerOrderUpsertWithoutAddressInputToJson(this);
}

@_i1.jsonSerializable
class CustomerOrderUpdateToOneWithWhereWithoutAddressInput
    implements _i1.JsonSerializable {
  const CustomerOrderUpdateToOneWithWhereWithoutAddressInput({
    this.where,
    required this.data,
  });

  factory CustomerOrderUpdateToOneWithWhereWithoutAddressInput.fromJson(
          Map<String, dynamic> json) =>
      _$CustomerOrderUpdateToOneWithWhereWithoutAddressInputFromJson(json);

  final CustomerOrderWhereInput? where;

  final CustomerOrderUpdateWithoutAddressInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$CustomerOrderUpdateToOneWithWhereWithoutAddressInputToJson(this);
}

@_i1.jsonSerializable
class CustomerOrderUpdateWithoutAddressInput implements _i1.JsonSerializable {
  const CustomerOrderUpdateWithoutAddressInput({
    this.customerName,
    this.status,
    this.totalPrice,
    this.created,
    this.orderItems,
  });

  factory CustomerOrderUpdateWithoutAddressInput.fromJson(
          Map<String, dynamic> json) =>
      _$CustomerOrderUpdateWithoutAddressInputFromJson(json);

  @JsonKey(name: r'customer_name')
  final StringFieldUpdateOperationsInput? customerName;

  final StringFieldUpdateOperationsInput? status;

  final IntFieldUpdateOperationsInput? totalPrice;

  final DateTimeFieldUpdateOperationsInput? created;

  final OrderItemsUpdateManyWithoutCustomerOrderNestedInput? orderItems;

  @override
  Map<String, dynamic> toJson() =>
      _$CustomerOrderUpdateWithoutAddressInputToJson(this);
}

@_i1.jsonSerializable
class CustomerOrderUncheckedUpdateWithoutAddressInput
    implements _i1.JsonSerializable {
  const CustomerOrderUncheckedUpdateWithoutAddressInput({
    this.id,
    this.customerName,
    this.status,
    this.totalPrice,
    this.created,
    this.orderItems,
  });

  factory CustomerOrderUncheckedUpdateWithoutAddressInput.fromJson(
          Map<String, dynamic> json) =>
      _$CustomerOrderUncheckedUpdateWithoutAddressInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  @JsonKey(name: r'customer_name')
  final StringFieldUpdateOperationsInput? customerName;

  final StringFieldUpdateOperationsInput? status;

  final IntFieldUpdateOperationsInput? totalPrice;

  final DateTimeFieldUpdateOperationsInput? created;

  final OrderItemsUncheckedUpdateManyWithoutCustomerOrderNestedInput?
      orderItems;

  @override
  Map<String, dynamic> toJson() =>
      _$CustomerOrderUncheckedUpdateWithoutAddressInputToJson(this);
}

@_i1.jsonSerializable
class CustomerOrderCreateWithoutOrderItemsInput
    implements _i1.JsonSerializable {
  const CustomerOrderCreateWithoutOrderItemsInput({
    required this.customerName,
    required this.status,
    required this.totalPrice,
    required this.created,
    this.address,
  });

  factory CustomerOrderCreateWithoutOrderItemsInput.fromJson(
          Map<String, dynamic> json) =>
      _$CustomerOrderCreateWithoutOrderItemsInputFromJson(json);

  @JsonKey(name: r'customer_name')
  final String customerName;

  final String status;

  final int totalPrice;

  final DateTime created;

  final AddressCreateNestedManyWithoutCustomerOrderInput? address;

  @override
  Map<String, dynamic> toJson() =>
      _$CustomerOrderCreateWithoutOrderItemsInputToJson(this);
}

@_i1.jsonSerializable
class CustomerOrderUncheckedCreateWithoutOrderItemsInput
    implements _i1.JsonSerializable {
  const CustomerOrderUncheckedCreateWithoutOrderItemsInput({
    this.id,
    required this.customerName,
    required this.status,
    required this.totalPrice,
    required this.created,
    this.address,
  });

  factory CustomerOrderUncheckedCreateWithoutOrderItemsInput.fromJson(
          Map<String, dynamic> json) =>
      _$CustomerOrderUncheckedCreateWithoutOrderItemsInputFromJson(json);

  final int? id;

  @JsonKey(name: r'customer_name')
  final String customerName;

  final String status;

  final int totalPrice;

  final DateTime created;

  final AddressUncheckedCreateNestedManyWithoutCustomerOrderInput? address;

  @override
  Map<String, dynamic> toJson() =>
      _$CustomerOrderUncheckedCreateWithoutOrderItemsInputToJson(this);
}

@_i1.jsonSerializable
class CustomerOrderCreateOrConnectWithoutOrderItemsInput
    implements _i1.JsonSerializable {
  const CustomerOrderCreateOrConnectWithoutOrderItemsInput({
    required this.where,
    required this.create,
  });

  factory CustomerOrderCreateOrConnectWithoutOrderItemsInput.fromJson(
          Map<String, dynamic> json) =>
      _$CustomerOrderCreateOrConnectWithoutOrderItemsInputFromJson(json);

  final CustomerOrderWhereUniqueInput where;

  final CustomerOrderCreateWithoutOrderItemsInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$CustomerOrderCreateOrConnectWithoutOrderItemsInputToJson(this);
}

@_i1.jsonSerializable
class CustomerOrderUpsertWithoutOrderItemsInput
    implements _i1.JsonSerializable {
  const CustomerOrderUpsertWithoutOrderItemsInput({
    required this.update,
    required this.create,
    this.where,
  });

  factory CustomerOrderUpsertWithoutOrderItemsInput.fromJson(
          Map<String, dynamic> json) =>
      _$CustomerOrderUpsertWithoutOrderItemsInputFromJson(json);

  final CustomerOrderUpdateWithoutOrderItemsInput update;

  final CustomerOrderCreateWithoutOrderItemsInput create;

  final CustomerOrderWhereInput? where;

  @override
  Map<String, dynamic> toJson() =>
      _$CustomerOrderUpsertWithoutOrderItemsInputToJson(this);
}

@_i1.jsonSerializable
class CustomerOrderUpdateToOneWithWhereWithoutOrderItemsInput
    implements _i1.JsonSerializable {
  const CustomerOrderUpdateToOneWithWhereWithoutOrderItemsInput({
    this.where,
    required this.data,
  });

  factory CustomerOrderUpdateToOneWithWhereWithoutOrderItemsInput.fromJson(
          Map<String, dynamic> json) =>
      _$CustomerOrderUpdateToOneWithWhereWithoutOrderItemsInputFromJson(json);

  final CustomerOrderWhereInput? where;

  final CustomerOrderUpdateWithoutOrderItemsInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$CustomerOrderUpdateToOneWithWhereWithoutOrderItemsInputToJson(this);
}

@_i1.jsonSerializable
class CustomerOrderUpdateWithoutOrderItemsInput
    implements _i1.JsonSerializable {
  const CustomerOrderUpdateWithoutOrderItemsInput({
    this.customerName,
    this.status,
    this.totalPrice,
    this.created,
    this.address,
  });

  factory CustomerOrderUpdateWithoutOrderItemsInput.fromJson(
          Map<String, dynamic> json) =>
      _$CustomerOrderUpdateWithoutOrderItemsInputFromJson(json);

  @JsonKey(name: r'customer_name')
  final StringFieldUpdateOperationsInput? customerName;

  final StringFieldUpdateOperationsInput? status;

  final IntFieldUpdateOperationsInput? totalPrice;

  final DateTimeFieldUpdateOperationsInput? created;

  final AddressUpdateManyWithoutCustomerOrderNestedInput? address;

  @override
  Map<String, dynamic> toJson() =>
      _$CustomerOrderUpdateWithoutOrderItemsInputToJson(this);
}

@_i1.jsonSerializable
class CustomerOrderUncheckedUpdateWithoutOrderItemsInput
    implements _i1.JsonSerializable {
  const CustomerOrderUncheckedUpdateWithoutOrderItemsInput({
    this.id,
    this.customerName,
    this.status,
    this.totalPrice,
    this.created,
    this.address,
  });

  factory CustomerOrderUncheckedUpdateWithoutOrderItemsInput.fromJson(
          Map<String, dynamic> json) =>
      _$CustomerOrderUncheckedUpdateWithoutOrderItemsInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  @JsonKey(name: r'customer_name')
  final StringFieldUpdateOperationsInput? customerName;

  final StringFieldUpdateOperationsInput? status;

  final IntFieldUpdateOperationsInput? totalPrice;

  final DateTimeFieldUpdateOperationsInput? created;

  final AddressUncheckedUpdateManyWithoutCustomerOrderNestedInput? address;

  @override
  Map<String, dynamic> toJson() =>
      _$CustomerOrderUncheckedUpdateWithoutOrderItemsInputToJson(this);
}

@_i1.jsonSerializable
class ProductCommentCreateManyProductInput implements _i1.JsonSerializable {
  const ProductCommentCreateManyProductInput({
    this.id,
    required this.username,
    required this.ratings,
    required this.email,
    required this.comment,
    required this.created,
  });

  factory ProductCommentCreateManyProductInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProductCommentCreateManyProductInputFromJson(json);

  final String? id;

  final String username;

  final double ratings;

  final String email;

  final String comment;

  final DateTime created;

  @override
  Map<String, dynamic> toJson() =>
      _$ProductCommentCreateManyProductInputToJson(this);
}

@_i1.jsonSerializable
class ProductCommentUpdateWithoutProductInput implements _i1.JsonSerializable {
  const ProductCommentUpdateWithoutProductInput({
    this.id,
    this.username,
    this.ratings,
    this.email,
    this.comment,
    this.created,
  });

  factory ProductCommentUpdateWithoutProductInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProductCommentUpdateWithoutProductInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? username;

  final FloatFieldUpdateOperationsInput? ratings;

  final StringFieldUpdateOperationsInput? email;

  final StringFieldUpdateOperationsInput? comment;

  final DateTimeFieldUpdateOperationsInput? created;

  @override
  Map<String, dynamic> toJson() =>
      _$ProductCommentUpdateWithoutProductInputToJson(this);
}

@_i1.jsonSerializable
class ProductCommentUncheckedUpdateWithoutProductInput
    implements _i1.JsonSerializable {
  const ProductCommentUncheckedUpdateWithoutProductInput({
    this.id,
    this.username,
    this.ratings,
    this.email,
    this.comment,
    this.created,
  });

  factory ProductCommentUncheckedUpdateWithoutProductInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProductCommentUncheckedUpdateWithoutProductInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? username;

  final FloatFieldUpdateOperationsInput? ratings;

  final StringFieldUpdateOperationsInput? email;

  final StringFieldUpdateOperationsInput? comment;

  final DateTimeFieldUpdateOperationsInput? created;

  @override
  Map<String, dynamic> toJson() =>
      _$ProductCommentUncheckedUpdateWithoutProductInputToJson(this);
}

@_i1.jsonSerializable
class ProductCommentUncheckedUpdateManyWithoutProductInput
    implements _i1.JsonSerializable {
  const ProductCommentUncheckedUpdateManyWithoutProductInput({
    this.id,
    this.username,
    this.ratings,
    this.email,
    this.comment,
    this.created,
  });

  factory ProductCommentUncheckedUpdateManyWithoutProductInput.fromJson(
          Map<String, dynamic> json) =>
      _$ProductCommentUncheckedUpdateManyWithoutProductInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? username;

  final FloatFieldUpdateOperationsInput? ratings;

  final StringFieldUpdateOperationsInput? email;

  final StringFieldUpdateOperationsInput? comment;

  final DateTimeFieldUpdateOperationsInput? created;

  @override
  Map<String, dynamic> toJson() =>
      _$ProductCommentUncheckedUpdateManyWithoutProductInputToJson(this);
}

@_i1.jsonSerializable
class AddressCreateManyCustomerOrderInput implements _i1.JsonSerializable {
  const AddressCreateManyCustomerOrderInput({
    required this.street,
    required this.district,
    required this.number,
    required this.city,
  });

  factory AddressCreateManyCustomerOrderInput.fromJson(
          Map<String, dynamic> json) =>
      _$AddressCreateManyCustomerOrderInputFromJson(json);

  final String street;

  final String district;

  final int number;

  final String city;

  @override
  Map<String, dynamic> toJson() =>
      _$AddressCreateManyCustomerOrderInputToJson(this);
}

@_i1.jsonSerializable
class OrderItemsCreateManyCustomerOrderInput implements _i1.JsonSerializable {
  const OrderItemsCreateManyCustomerOrderInput({
    required this.amount,
    required this.price,
  });

  factory OrderItemsCreateManyCustomerOrderInput.fromJson(
          Map<String, dynamic> json) =>
      _$OrderItemsCreateManyCustomerOrderInputFromJson(json);

  final int amount;

  final int price;

  @override
  Map<String, dynamic> toJson() =>
      _$OrderItemsCreateManyCustomerOrderInputToJson(this);
}

@_i1.jsonSerializable
class AddressUpdateWithoutCustomerOrderInput implements _i1.JsonSerializable {
  const AddressUpdateWithoutCustomerOrderInput({
    this.street,
    this.district,
    this.number,
    this.city,
  });

  factory AddressUpdateWithoutCustomerOrderInput.fromJson(
          Map<String, dynamic> json) =>
      _$AddressUpdateWithoutCustomerOrderInputFromJson(json);

  final StringFieldUpdateOperationsInput? street;

  final StringFieldUpdateOperationsInput? district;

  final IntFieldUpdateOperationsInput? number;

  final StringFieldUpdateOperationsInput? city;

  @override
  Map<String, dynamic> toJson() =>
      _$AddressUpdateWithoutCustomerOrderInputToJson(this);
}

@_i1.jsonSerializable
class AddressUncheckedUpdateWithoutCustomerOrderInput
    implements _i1.JsonSerializable {
  const AddressUncheckedUpdateWithoutCustomerOrderInput({
    this.street,
    this.district,
    this.number,
    this.city,
  });

  factory AddressUncheckedUpdateWithoutCustomerOrderInput.fromJson(
          Map<String, dynamic> json) =>
      _$AddressUncheckedUpdateWithoutCustomerOrderInputFromJson(json);

  final StringFieldUpdateOperationsInput? street;

  final StringFieldUpdateOperationsInput? district;

  final IntFieldUpdateOperationsInput? number;

  final StringFieldUpdateOperationsInput? city;

  @override
  Map<String, dynamic> toJson() =>
      _$AddressUncheckedUpdateWithoutCustomerOrderInputToJson(this);
}

@_i1.jsonSerializable
class AddressUncheckedUpdateManyWithoutCustomerOrderInput
    implements _i1.JsonSerializable {
  const AddressUncheckedUpdateManyWithoutCustomerOrderInput({
    this.street,
    this.district,
    this.number,
    this.city,
  });

  factory AddressUncheckedUpdateManyWithoutCustomerOrderInput.fromJson(
          Map<String, dynamic> json) =>
      _$AddressUncheckedUpdateManyWithoutCustomerOrderInputFromJson(json);

  final StringFieldUpdateOperationsInput? street;

  final StringFieldUpdateOperationsInput? district;

  final IntFieldUpdateOperationsInput? number;

  final StringFieldUpdateOperationsInput? city;

  @override
  Map<String, dynamic> toJson() =>
      _$AddressUncheckedUpdateManyWithoutCustomerOrderInputToJson(this);
}

@_i1.jsonSerializable
class OrderItemsUpdateWithoutCustomerOrderInput
    implements _i1.JsonSerializable {
  const OrderItemsUpdateWithoutCustomerOrderInput({
    this.amount,
    this.price,
  });

  factory OrderItemsUpdateWithoutCustomerOrderInput.fromJson(
          Map<String, dynamic> json) =>
      _$OrderItemsUpdateWithoutCustomerOrderInputFromJson(json);

  final IntFieldUpdateOperationsInput? amount;

  final IntFieldUpdateOperationsInput? price;

  @override
  Map<String, dynamic> toJson() =>
      _$OrderItemsUpdateWithoutCustomerOrderInputToJson(this);
}

@_i1.jsonSerializable
class OrderItemsUncheckedUpdateWithoutCustomerOrderInput
    implements _i1.JsonSerializable {
  const OrderItemsUncheckedUpdateWithoutCustomerOrderInput({
    this.amount,
    this.price,
  });

  factory OrderItemsUncheckedUpdateWithoutCustomerOrderInput.fromJson(
          Map<String, dynamic> json) =>
      _$OrderItemsUncheckedUpdateWithoutCustomerOrderInputFromJson(json);

  final IntFieldUpdateOperationsInput? amount;

  final IntFieldUpdateOperationsInput? price;

  @override
  Map<String, dynamic> toJson() =>
      _$OrderItemsUncheckedUpdateWithoutCustomerOrderInputToJson(this);
}

@_i1.jsonSerializable
class OrderItemsUncheckedUpdateManyWithoutCustomerOrderInput
    implements _i1.JsonSerializable {
  const OrderItemsUncheckedUpdateManyWithoutCustomerOrderInput({
    this.amount,
    this.price,
  });

  factory OrderItemsUncheckedUpdateManyWithoutCustomerOrderInput.fromJson(
          Map<String, dynamic> json) =>
      _$OrderItemsUncheckedUpdateManyWithoutCustomerOrderInputFromJson(json);

  final IntFieldUpdateOperationsInput? amount;

  final IntFieldUpdateOperationsInput? price;

  @override
  Map<String, dynamic> toJson() =>
      _$OrderItemsUncheckedUpdateManyWithoutCustomerOrderInputToJson(this);
}

@_i1.jsonSerializable
class User implements _i1.JsonSerializable {
  const User({
    required this.id,
    required this.username,
    required this.email,
    required this.password,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  final String id;

  final String username;

  final String email;

  final String password;

  @override
  Map<String, dynamic> toJson() => _$UserToJson(this);
}

@_i1.jsonSerializable
class Product implements _i1.JsonSerializable {
  const Product({
    required this.id,
    required this.name,
    required this.description,
    required this.imgUrl,
    required this.price,
  });

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  final String id;

  final String name;

  final String description;

  @JsonKey(name: r'img_url')
  final String imgUrl;

  final int price;

  @override
  Map<String, dynamic> toJson() => _$ProductToJson(this);
}

@_i1.jsonSerializable
class ProductComment implements _i1.JsonSerializable {
  const ProductComment({
    required this.id,
    required this.productId,
    required this.username,
    required this.ratings,
    required this.email,
    required this.comment,
    required this.created,
  });

  factory ProductComment.fromJson(Map<String, dynamic> json) =>
      _$ProductCommentFromJson(json);

  final String id;

  final String productId;

  final String username;

  final double ratings;

  final String email;

  final String comment;

  final DateTime created;

  @override
  Map<String, dynamic> toJson() => _$ProductCommentToJson(this);
}

@_i1.jsonSerializable
class CustomerOrder implements _i1.JsonSerializable {
  const CustomerOrder({
    required this.id,
    required this.customerName,
    required this.status,
    required this.totalPrice,
    required this.created,
  });

  factory CustomerOrder.fromJson(Map<String, dynamic> json) =>
      _$CustomerOrderFromJson(json);

  final int id;

  @JsonKey(name: r'customer_name')
  final String customerName;

  final String status;

  final int totalPrice;

  final DateTime created;

  @override
  Map<String, dynamic> toJson() => _$CustomerOrderToJson(this);
}

@_i1.jsonSerializable
class Address implements _i1.JsonSerializable {
  const Address({
    required this.street,
    required this.district,
    required this.number,
    required this.city,
    required this.customerOrderId,
  });

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);

  final String street;

  final String district;

  final int number;

  final String city;

  @JsonKey(name: r'customer_order_id')
  final int customerOrderId;

  @override
  Map<String, dynamic> toJson() => _$AddressToJson(this);
}

@_i1.jsonSerializable
class OrderItems implements _i1.JsonSerializable {
  const OrderItems({
    required this.customerOrderId,
    required this.amount,
    required this.price,
  });

  factory OrderItems.fromJson(Map<String, dynamic> json) =>
      _$OrderItemsFromJson(json);

  @JsonKey(name: r'customer_order_id')
  final int customerOrderId;

  final int amount;

  final int price;

  @override
  Map<String, dynamic> toJson() => _$OrderItemsToJson(this);
}

class UserFluent<T> extends _i1.PrismaFluent<T> {
  const UserFluent(
    super.original,
    super.$query,
  );
}

class ProductFluent<T> extends _i1.PrismaFluent<T> {
  const ProductFluent(
    super.original,
    super.$query,
  );

  Future<Iterable<ProductComment>?> productComments({
    ProductCommentWhereInput? where,
    Iterable<ProductCommentOrderByWithRelationInput>? orderBy,
    ProductCommentWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<ProductCommentScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'product_comments',
          fields: fields,
          args: args,
        )
      ]),
      key: r'product_comments',
    );
    final fields = ProductCommentScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> productComments) =>
        productComments.map((Map productComments) =>
            ProductComment.fromJson(productComments.cast()));
    return query(fields)
        .then((json) => json is Iterable ? compiler(json.cast()) : null);
  }

  ProductCountOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return ProductCountOutputType(query);
  }
}

class ProductCommentFluent<T> extends _i1.PrismaFluent<T> {
  const ProductCommentFluent(
    super.original,
    super.$query,
  );

  ProductFluent<Product> product() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'product',
          fields: fields,
        )
      ]),
      key: r'product',
    );
    final future = query(ProductScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Product.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: product)'));
    return ProductFluent<Product>(
      future,
      query,
    );
  }
}

class CustomerOrderFluent<T> extends _i1.PrismaFluent<T> {
  const CustomerOrderFluent(
    super.original,
    super.$query,
  );

  Future<Iterable<Address>?> address({
    AddressWhereInput? where,
    Iterable<AddressOrderByWithRelationInput>? orderBy,
    AddressWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<AddressScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'address',
          fields: fields,
          args: args,
        )
      ]),
      key: r'address',
    );
    final fields = AddressScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> address) =>
        address.map((Map address) => Address.fromJson(address.cast()));
    return query(fields)
        .then((json) => json is Iterable ? compiler(json.cast()) : null);
  }

  Future<Iterable<OrderItems>?> orderItems({
    OrderItemsWhereInput? where,
    Iterable<OrderItemsOrderByWithRelationInput>? orderBy,
    OrderItemsWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<OrderItemsScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'orderItems',
          fields: fields,
          args: args,
        )
      ]),
      key: r'orderItems',
    );
    final fields = OrderItemsScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> orderItems) => orderItems
        .map((Map orderItems) => OrderItems.fromJson(orderItems.cast()));
    return query(fields)
        .then((json) => json is Iterable ? compiler(json.cast()) : null);
  }

  CustomerOrderCountOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return CustomerOrderCountOutputType(query);
  }
}

class AddressFluent<T> extends _i1.PrismaFluent<T> {
  const AddressFluent(
    super.original,
    super.$query,
  );

  CustomerOrderFluent<CustomerOrder> customerOrder() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'customer_order',
          fields: fields,
        )
      ]),
      key: r'customer_order',
    );
    final future = query(CustomerOrderScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? CustomerOrder.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: customer_order)'));
    return CustomerOrderFluent<CustomerOrder>(
      future,
      query,
    );
  }
}

class OrderItemsFluent<T> extends _i1.PrismaFluent<T> {
  const OrderItemsFluent(
    super.original,
    super.$query,
  );

  CustomerOrderFluent<CustomerOrder> customerOrder() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'customerOrder',
          fields: fields,
        )
      ]),
      key: r'customerOrder',
    );
    final future = query(CustomerOrderScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? CustomerOrder.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: customer_order)'));
    return CustomerOrderFluent<CustomerOrder>(
      future,
      query,
    );
  }
}

extension UserModelDelegateExtension on _i1.ModelDelegate<User> {
  UserFluent<User?> findUnique({required UserWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueuser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueuser',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? User.fromJson(json.cast<String, dynamic>()) : null);
    return UserFluent<User?>(
      future,
      query,
    );
  }

  UserFluent<User> findUniqueOrThrow({required UserWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueuserOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueuserOrThrow',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? User.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: user)'));
    return UserFluent<User>(
      future,
      query,
    );
  }

  UserFluent<User?> findFirst({
    UserWhereInput? where,
    Iterable<UserOrderByWithRelationInput>? orderBy,
    UserWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<UserScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstuser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstuser',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? User.fromJson(json.cast<String, dynamic>()) : null);
    return UserFluent<User?>(
      future,
      query,
    );
  }

  UserFluent<User> findFirstOrThrow({
    UserWhereInput? where,
    Iterable<UserOrderByWithRelationInput>? orderBy,
    UserWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<UserScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstuserOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstuserOrThrow',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? User.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: user)'));
    return UserFluent<User>(
      future,
      query,
    );
  }

  Future<Iterable<User>> findMany({
    UserWhereInput? where,
    Iterable<UserOrderByWithRelationInput>? orderBy,
    UserWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<UserScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findManyuser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findManyuser',
    );
    final fields = UserScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> findManyuser) => findManyuser
        .map((Map findManyuser) => User.fromJson(findManyuser.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }

  UserFluent<User> create({required UserCreateInput data}) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createOneuser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createOneuser',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? User.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: user)'));
    return UserFluent<User>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> createMany({
    required Iterable<UserCreateManyInput> data,
    bool? skipDuplicates,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'skipDuplicates',
        skipDuplicates,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createManyuser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createManyuser',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map createManyuser) =>
        AffectedRowsOutput.fromJson(createManyuser.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  UserFluent<User?> update({
    required UserUpdateInput data,
    required UserWhereUniqueInput where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateOneuser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateOneuser',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? User.fromJson(json.cast<String, dynamic>()) : null);
    return UserFluent<User?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> updateMany({
    required UserUpdateManyMutationInput data,
    UserWhereInput? where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateManyuser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateManyuser',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map updateManyuser) =>
        AffectedRowsOutput.fromJson(updateManyuser.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  UserFluent<User> upsert({
    required UserWhereUniqueInput where,
    required UserCreateInput create,
    required UserUpdateInput update,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'create',
        create,
      ),
      _i2.GraphQLArg(
        r'update',
        update,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'upsertOneuser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'upsertOneuser',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? User.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: user)'));
    return UserFluent<User>(
      future,
      query,
    );
  }

  UserFluent<User?> delete({required UserWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteOneuser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteOneuser',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? User.fromJson(json.cast<String, dynamic>()) : null);
    return UserFluent<User?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> deleteMany({UserWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteManyuser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteManyuser',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map deleteManyuser) =>
        AffectedRowsOutput.fromJson(deleteManyuser.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AggregateUser aggregate({
    UserWhereInput? where,
    Iterable<UserOrderByWithRelationInput>? orderBy,
    UserWhereUniqueInput? cursor,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'aggregateuser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'aggregateuser',
    );
    return AggregateUser(query);
  }

  Future<Iterable<UserGroupByOutputType>> groupBy({
    UserWhereInput? where,
    Iterable<UserOrderByWithAggregationInput>? orderBy,
    required Iterable<UserScalarFieldEnum> by,
    UserScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'by',
        by,
      ),
      _i2.GraphQLArg(
        r'having',
        having,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'groupByuser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'groupByuser',
    );
    final fields = by.map((e) => _i2.GraphQLField(e.originalName ?? e.name));
    compiler(Iterable<Map> groupByuser) => groupByuser.map((Map groupByuser) =>
        UserGroupByOutputType.fromJson(groupByuser.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }
}

extension ProductModelDelegateExtension on _i1.ModelDelegate<Product> {
  ProductFluent<Product?> findUnique({required ProductWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueproduct',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueproduct',
    );
    final future = query(ProductScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Product.fromJson(json.cast<String, dynamic>())
            : null);
    return ProductFluent<Product?>(
      future,
      query,
    );
  }

  ProductFluent<Product> findUniqueOrThrow(
      {required ProductWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueproductOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueproductOrThrow',
    );
    final future = query(ProductScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Product.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: product)'));
    return ProductFluent<Product>(
      future,
      query,
    );
  }

  ProductFluent<Product?> findFirst({
    ProductWhereInput? where,
    Iterable<ProductOrderByWithRelationInput>? orderBy,
    ProductWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<ProductScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstproduct',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstproduct',
    );
    final future = query(ProductScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Product.fromJson(json.cast<String, dynamic>())
            : null);
    return ProductFluent<Product?>(
      future,
      query,
    );
  }

  ProductFluent<Product> findFirstOrThrow({
    ProductWhereInput? where,
    Iterable<ProductOrderByWithRelationInput>? orderBy,
    ProductWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<ProductScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstproductOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstproductOrThrow',
    );
    final future = query(ProductScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Product.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: product)'));
    return ProductFluent<Product>(
      future,
      query,
    );
  }

  Future<Iterable<Product>> findMany({
    ProductWhereInput? where,
    Iterable<ProductOrderByWithRelationInput>? orderBy,
    ProductWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<ProductScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findManyproduct',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findManyproduct',
    );
    final fields = ProductScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> findManyproduct) => findManyproduct
        .map((Map findManyproduct) => Product.fromJson(findManyproduct.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }

  ProductFluent<Product> create({required ProductCreateInput data}) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createOneproduct',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createOneproduct',
    );
    final future = query(ProductScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Product.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: product)'));
    return ProductFluent<Product>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> createMany({
    required Iterable<ProductCreateManyInput> data,
    bool? skipDuplicates,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'skipDuplicates',
        skipDuplicates,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createManyproduct',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createManyproduct',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map createManyproduct) =>
        AffectedRowsOutput.fromJson(createManyproduct.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  ProductFluent<Product?> update({
    required ProductUpdateInput data,
    required ProductWhereUniqueInput where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateOneproduct',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateOneproduct',
    );
    final future = query(ProductScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Product.fromJson(json.cast<String, dynamic>())
            : null);
    return ProductFluent<Product?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> updateMany({
    required ProductUpdateManyMutationInput data,
    ProductWhereInput? where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateManyproduct',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateManyproduct',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map updateManyproduct) =>
        AffectedRowsOutput.fromJson(updateManyproduct.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  ProductFluent<Product> upsert({
    required ProductWhereUniqueInput where,
    required ProductCreateInput create,
    required ProductUpdateInput update,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'create',
        create,
      ),
      _i2.GraphQLArg(
        r'update',
        update,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'upsertOneproduct',
          fields: fields,
          args: args,
        )
      ]),
      key: r'upsertOneproduct',
    );
    final future = query(ProductScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Product.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: product)'));
    return ProductFluent<Product>(
      future,
      query,
    );
  }

  ProductFluent<Product?> delete({required ProductWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteOneproduct',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteOneproduct',
    );
    final future = query(ProductScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Product.fromJson(json.cast<String, dynamic>())
            : null);
    return ProductFluent<Product?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> deleteMany({ProductWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteManyproduct',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteManyproduct',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map deleteManyproduct) =>
        AffectedRowsOutput.fromJson(deleteManyproduct.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AggregateProduct aggregate({
    ProductWhereInput? where,
    Iterable<ProductOrderByWithRelationInput>? orderBy,
    ProductWhereUniqueInput? cursor,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'aggregateproduct',
          fields: fields,
          args: args,
        )
      ]),
      key: r'aggregateproduct',
    );
    return AggregateProduct(query);
  }

  Future<Iterable<ProductGroupByOutputType>> groupBy({
    ProductWhereInput? where,
    Iterable<ProductOrderByWithAggregationInput>? orderBy,
    required Iterable<ProductScalarFieldEnum> by,
    ProductScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'by',
        by,
      ),
      _i2.GraphQLArg(
        r'having',
        having,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'groupByproduct',
          fields: fields,
          args: args,
        )
      ]),
      key: r'groupByproduct',
    );
    final fields = by.map((e) => _i2.GraphQLField(e.originalName ?? e.name));
    compiler(Iterable<Map> groupByproduct) =>
        groupByproduct.map((Map groupByproduct) =>
            ProductGroupByOutputType.fromJson(groupByproduct.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }
}

extension ProductCommentModelDelegateExtension
    on _i1.ModelDelegate<ProductComment> {
  ProductCommentFluent<ProductComment?> findUnique(
      {required ProductCommentWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueproduct_comment',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueproduct_comment',
    );
    final future = query(ProductCommentScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? ProductComment.fromJson(json.cast<String, dynamic>())
            : null);
    return ProductCommentFluent<ProductComment?>(
      future,
      query,
    );
  }

  ProductCommentFluent<ProductComment> findUniqueOrThrow(
      {required ProductCommentWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueproduct_commentOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueproduct_commentOrThrow',
    );
    final future = query(ProductCommentScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? ProductComment.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: product_comment)'));
    return ProductCommentFluent<ProductComment>(
      future,
      query,
    );
  }

  ProductCommentFluent<ProductComment?> findFirst({
    ProductCommentWhereInput? where,
    Iterable<ProductCommentOrderByWithRelationInput>? orderBy,
    ProductCommentWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<ProductCommentScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstproduct_comment',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstproduct_comment',
    );
    final future = query(ProductCommentScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? ProductComment.fromJson(json.cast<String, dynamic>())
            : null);
    return ProductCommentFluent<ProductComment?>(
      future,
      query,
    );
  }

  ProductCommentFluent<ProductComment> findFirstOrThrow({
    ProductCommentWhereInput? where,
    Iterable<ProductCommentOrderByWithRelationInput>? orderBy,
    ProductCommentWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<ProductCommentScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstproduct_commentOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstproduct_commentOrThrow',
    );
    final future = query(ProductCommentScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? ProductComment.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: product_comment)'));
    return ProductCommentFluent<ProductComment>(
      future,
      query,
    );
  }

  Future<Iterable<ProductComment>> findMany({
    ProductCommentWhereInput? where,
    Iterable<ProductCommentOrderByWithRelationInput>? orderBy,
    ProductCommentWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<ProductCommentScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findManyproduct_comment',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findManyproduct_comment',
    );
    final fields = ProductCommentScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> findManyproductComment) =>
        findManyproductComment.map((Map findManyproductComment) =>
            ProductComment.fromJson(findManyproductComment.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }

  ProductCommentFluent<ProductComment> create(
      {required ProductCommentCreateInput data}) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createOneproduct_comment',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createOneproduct_comment',
    );
    final future = query(ProductCommentScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? ProductComment.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: product_comment)'));
    return ProductCommentFluent<ProductComment>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> createMany({
    required Iterable<ProductCommentCreateManyInput> data,
    bool? skipDuplicates,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'skipDuplicates',
        skipDuplicates,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createManyproduct_comment',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createManyproduct_comment',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map createManyproductComment) =>
        AffectedRowsOutput.fromJson(createManyproductComment.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  ProductCommentFluent<ProductComment?> update({
    required ProductCommentUpdateInput data,
    required ProductCommentWhereUniqueInput where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateOneproduct_comment',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateOneproduct_comment',
    );
    final future = query(ProductCommentScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? ProductComment.fromJson(json.cast<String, dynamic>())
            : null);
    return ProductCommentFluent<ProductComment?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> updateMany({
    required ProductCommentUpdateManyMutationInput data,
    ProductCommentWhereInput? where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateManyproduct_comment',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateManyproduct_comment',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map updateManyproductComment) =>
        AffectedRowsOutput.fromJson(updateManyproductComment.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  ProductCommentFluent<ProductComment> upsert({
    required ProductCommentWhereUniqueInput where,
    required ProductCommentCreateInput create,
    required ProductCommentUpdateInput update,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'create',
        create,
      ),
      _i2.GraphQLArg(
        r'update',
        update,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'upsertOneproduct_comment',
          fields: fields,
          args: args,
        )
      ]),
      key: r'upsertOneproduct_comment',
    );
    final future = query(ProductCommentScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? ProductComment.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: product_comment)'));
    return ProductCommentFluent<ProductComment>(
      future,
      query,
    );
  }

  ProductCommentFluent<ProductComment?> delete(
      {required ProductCommentWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteOneproduct_comment',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteOneproduct_comment',
    );
    final future = query(ProductCommentScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? ProductComment.fromJson(json.cast<String, dynamic>())
            : null);
    return ProductCommentFluent<ProductComment?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> deleteMany({ProductCommentWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteManyproduct_comment',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteManyproduct_comment',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map deleteManyproductComment) =>
        AffectedRowsOutput.fromJson(deleteManyproductComment.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AggregateProductComment aggregate({
    ProductCommentWhereInput? where,
    Iterable<ProductCommentOrderByWithRelationInput>? orderBy,
    ProductCommentWhereUniqueInput? cursor,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'aggregateproduct_comment',
          fields: fields,
          args: args,
        )
      ]),
      key: r'aggregateproduct_comment',
    );
    return AggregateProductComment(query);
  }

  Future<Iterable<ProductCommentGroupByOutputType>> groupBy({
    ProductCommentWhereInput? where,
    Iterable<ProductCommentOrderByWithAggregationInput>? orderBy,
    required Iterable<ProductCommentScalarFieldEnum> by,
    ProductCommentScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'by',
        by,
      ),
      _i2.GraphQLArg(
        r'having',
        having,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'groupByproduct_comment',
          fields: fields,
          args: args,
        )
      ]),
      key: r'groupByproduct_comment',
    );
    final fields = by.map((e) => _i2.GraphQLField(e.originalName ?? e.name));
    compiler(Iterable<Map> groupByproductComment) => groupByproductComment.map(
        (Map groupByproductComment) => ProductCommentGroupByOutputType.fromJson(
            groupByproductComment.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }
}

extension CustomerOrderModelDelegateExtension
    on _i1.ModelDelegate<CustomerOrder> {
  CustomerOrderFluent<CustomerOrder?> findUnique(
      {required CustomerOrderWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniquecustomer_order',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniquecustomer_order',
    );
    final future = query(CustomerOrderScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? CustomerOrder.fromJson(json.cast<String, dynamic>())
            : null);
    return CustomerOrderFluent<CustomerOrder?>(
      future,
      query,
    );
  }

  CustomerOrderFluent<CustomerOrder> findUniqueOrThrow(
      {required CustomerOrderWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniquecustomer_orderOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniquecustomer_orderOrThrow',
    );
    final future = query(CustomerOrderScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? CustomerOrder.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: customer_order)'));
    return CustomerOrderFluent<CustomerOrder>(
      future,
      query,
    );
  }

  CustomerOrderFluent<CustomerOrder?> findFirst({
    CustomerOrderWhereInput? where,
    Iterable<CustomerOrderOrderByWithRelationInput>? orderBy,
    CustomerOrderWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<CustomerOrderScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstcustomer_order',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstcustomer_order',
    );
    final future = query(CustomerOrderScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? CustomerOrder.fromJson(json.cast<String, dynamic>())
            : null);
    return CustomerOrderFluent<CustomerOrder?>(
      future,
      query,
    );
  }

  CustomerOrderFluent<CustomerOrder> findFirstOrThrow({
    CustomerOrderWhereInput? where,
    Iterable<CustomerOrderOrderByWithRelationInput>? orderBy,
    CustomerOrderWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<CustomerOrderScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstcustomer_orderOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstcustomer_orderOrThrow',
    );
    final future = query(CustomerOrderScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? CustomerOrder.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: customer_order)'));
    return CustomerOrderFluent<CustomerOrder>(
      future,
      query,
    );
  }

  Future<Iterable<CustomerOrder>> findMany({
    CustomerOrderWhereInput? where,
    Iterable<CustomerOrderOrderByWithRelationInput>? orderBy,
    CustomerOrderWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<CustomerOrderScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findManycustomer_order',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findManycustomer_order',
    );
    final fields = CustomerOrderScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> findManycustomerOrder) =>
        findManycustomerOrder.map((Map findManycustomerOrder) =>
            CustomerOrder.fromJson(findManycustomerOrder.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }

  CustomerOrderFluent<CustomerOrder> create(
      {required CustomerOrderCreateInput data}) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createOnecustomer_order',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createOnecustomer_order',
    );
    final future = query(CustomerOrderScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? CustomerOrder.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: customer_order)'));
    return CustomerOrderFluent<CustomerOrder>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> createMany({
    required Iterable<CustomerOrderCreateManyInput> data,
    bool? skipDuplicates,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'skipDuplicates',
        skipDuplicates,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createManycustomer_order',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createManycustomer_order',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map createManycustomerOrder) =>
        AffectedRowsOutput.fromJson(createManycustomerOrder.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  CustomerOrderFluent<CustomerOrder?> update({
    required CustomerOrderUpdateInput data,
    required CustomerOrderWhereUniqueInput where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateOnecustomer_order',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateOnecustomer_order',
    );
    final future = query(CustomerOrderScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? CustomerOrder.fromJson(json.cast<String, dynamic>())
            : null);
    return CustomerOrderFluent<CustomerOrder?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> updateMany({
    required CustomerOrderUpdateManyMutationInput data,
    CustomerOrderWhereInput? where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateManycustomer_order',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateManycustomer_order',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map updateManycustomerOrder) =>
        AffectedRowsOutput.fromJson(updateManycustomerOrder.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  CustomerOrderFluent<CustomerOrder> upsert({
    required CustomerOrderWhereUniqueInput where,
    required CustomerOrderCreateInput create,
    required CustomerOrderUpdateInput update,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'create',
        create,
      ),
      _i2.GraphQLArg(
        r'update',
        update,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'upsertOnecustomer_order',
          fields: fields,
          args: args,
        )
      ]),
      key: r'upsertOnecustomer_order',
    );
    final future = query(CustomerOrderScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? CustomerOrder.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: customer_order)'));
    return CustomerOrderFluent<CustomerOrder>(
      future,
      query,
    );
  }

  CustomerOrderFluent<CustomerOrder?> delete(
      {required CustomerOrderWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteOnecustomer_order',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteOnecustomer_order',
    );
    final future = query(CustomerOrderScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? CustomerOrder.fromJson(json.cast<String, dynamic>())
            : null);
    return CustomerOrderFluent<CustomerOrder?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> deleteMany({CustomerOrderWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteManycustomer_order',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteManycustomer_order',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map deleteManycustomerOrder) =>
        AffectedRowsOutput.fromJson(deleteManycustomerOrder.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AggregateCustomerOrder aggregate({
    CustomerOrderWhereInput? where,
    Iterable<CustomerOrderOrderByWithRelationInput>? orderBy,
    CustomerOrderWhereUniqueInput? cursor,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'aggregatecustomer_order',
          fields: fields,
          args: args,
        )
      ]),
      key: r'aggregatecustomer_order',
    );
    return AggregateCustomerOrder(query);
  }

  Future<Iterable<CustomerOrderGroupByOutputType>> groupBy({
    CustomerOrderWhereInput? where,
    Iterable<CustomerOrderOrderByWithAggregationInput>? orderBy,
    required Iterable<CustomerOrderScalarFieldEnum> by,
    CustomerOrderScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'by',
        by,
      ),
      _i2.GraphQLArg(
        r'having',
        having,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'groupBycustomer_order',
          fields: fields,
          args: args,
        )
      ]),
      key: r'groupBycustomer_order',
    );
    final fields = by.map((e) => _i2.GraphQLField(e.originalName ?? e.name));
    compiler(Iterable<Map> groupBycustomerOrder) => groupBycustomerOrder.map(
        (Map groupBycustomerOrder) => CustomerOrderGroupByOutputType.fromJson(
            groupBycustomerOrder.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }
}

extension AddressModelDelegateExtension on _i1.ModelDelegate<Address> {
  AddressFluent<Address?> findUnique({required AddressWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueaddress',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueaddress',
    );
    final future = query(AddressScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Address.fromJson(json.cast<String, dynamic>())
            : null);
    return AddressFluent<Address?>(
      future,
      query,
    );
  }

  AddressFluent<Address> findUniqueOrThrow(
      {required AddressWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueaddressOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueaddressOrThrow',
    );
    final future = query(AddressScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Address.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: address)'));
    return AddressFluent<Address>(
      future,
      query,
    );
  }

  AddressFluent<Address?> findFirst({
    AddressWhereInput? where,
    Iterable<AddressOrderByWithRelationInput>? orderBy,
    AddressWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<AddressScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstaddress',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstaddress',
    );
    final future = query(AddressScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Address.fromJson(json.cast<String, dynamic>())
            : null);
    return AddressFluent<Address?>(
      future,
      query,
    );
  }

  AddressFluent<Address> findFirstOrThrow({
    AddressWhereInput? where,
    Iterable<AddressOrderByWithRelationInput>? orderBy,
    AddressWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<AddressScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstaddressOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstaddressOrThrow',
    );
    final future = query(AddressScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Address.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: address)'));
    return AddressFluent<Address>(
      future,
      query,
    );
  }

  Future<Iterable<Address>> findMany({
    AddressWhereInput? where,
    Iterable<AddressOrderByWithRelationInput>? orderBy,
    AddressWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<AddressScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findManyaddress',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findManyaddress',
    );
    final fields = AddressScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> findManyaddress) => findManyaddress
        .map((Map findManyaddress) => Address.fromJson(findManyaddress.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }

  AddressFluent<Address> create({required AddressCreateInput data}) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createOneaddress',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createOneaddress',
    );
    final future = query(AddressScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Address.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: address)'));
    return AddressFluent<Address>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> createMany({
    required Iterable<AddressCreateManyInput> data,
    bool? skipDuplicates,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'skipDuplicates',
        skipDuplicates,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createManyaddress',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createManyaddress',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map createManyaddress) =>
        AffectedRowsOutput.fromJson(createManyaddress.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AddressFluent<Address?> update({
    required AddressUpdateInput data,
    required AddressWhereUniqueInput where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateOneaddress',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateOneaddress',
    );
    final future = query(AddressScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Address.fromJson(json.cast<String, dynamic>())
            : null);
    return AddressFluent<Address?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> updateMany({
    required AddressUpdateManyMutationInput data,
    AddressWhereInput? where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateManyaddress',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateManyaddress',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map updateManyaddress) =>
        AffectedRowsOutput.fromJson(updateManyaddress.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AddressFluent<Address> upsert({
    required AddressWhereUniqueInput where,
    required AddressCreateInput create,
    required AddressUpdateInput update,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'create',
        create,
      ),
      _i2.GraphQLArg(
        r'update',
        update,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'upsertOneaddress',
          fields: fields,
          args: args,
        )
      ]),
      key: r'upsertOneaddress',
    );
    final future = query(AddressScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Address.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: address)'));
    return AddressFluent<Address>(
      future,
      query,
    );
  }

  AddressFluent<Address?> delete({required AddressWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteOneaddress',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteOneaddress',
    );
    final future = query(AddressScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Address.fromJson(json.cast<String, dynamic>())
            : null);
    return AddressFluent<Address?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> deleteMany({AddressWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteManyaddress',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteManyaddress',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map deleteManyaddress) =>
        AffectedRowsOutput.fromJson(deleteManyaddress.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AggregateAddress aggregate({
    AddressWhereInput? where,
    Iterable<AddressOrderByWithRelationInput>? orderBy,
    AddressWhereUniqueInput? cursor,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'aggregateaddress',
          fields: fields,
          args: args,
        )
      ]),
      key: r'aggregateaddress',
    );
    return AggregateAddress(query);
  }

  Future<Iterable<AddressGroupByOutputType>> groupBy({
    AddressWhereInput? where,
    Iterable<AddressOrderByWithAggregationInput>? orderBy,
    required Iterable<AddressScalarFieldEnum> by,
    AddressScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'by',
        by,
      ),
      _i2.GraphQLArg(
        r'having',
        having,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'groupByaddress',
          fields: fields,
          args: args,
        )
      ]),
      key: r'groupByaddress',
    );
    final fields = by.map((e) => _i2.GraphQLField(e.originalName ?? e.name));
    compiler(Iterable<Map> groupByaddress) =>
        groupByaddress.map((Map groupByaddress) =>
            AddressGroupByOutputType.fromJson(groupByaddress.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }
}

extension OrderItemsModelDelegateExtension on _i1.ModelDelegate<OrderItems> {
  OrderItemsFluent<OrderItems?> findUnique(
      {required OrderItemsWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueorder_items',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueorder_items',
    );
    final future = query(OrderItemsScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? OrderItems.fromJson(json.cast<String, dynamic>())
            : null);
    return OrderItemsFluent<OrderItems?>(
      future,
      query,
    );
  }

  OrderItemsFluent<OrderItems> findUniqueOrThrow(
      {required OrderItemsWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueorder_itemsOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueorder_itemsOrThrow',
    );
    final future = query(OrderItemsScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? OrderItems.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: order_items)'));
    return OrderItemsFluent<OrderItems>(
      future,
      query,
    );
  }

  OrderItemsFluent<OrderItems?> findFirst({
    OrderItemsWhereInput? where,
    Iterable<OrderItemsOrderByWithRelationInput>? orderBy,
    OrderItemsWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<OrderItemsScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstorder_items',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstorder_items',
    );
    final future = query(OrderItemsScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? OrderItems.fromJson(json.cast<String, dynamic>())
            : null);
    return OrderItemsFluent<OrderItems?>(
      future,
      query,
    );
  }

  OrderItemsFluent<OrderItems> findFirstOrThrow({
    OrderItemsWhereInput? where,
    Iterable<OrderItemsOrderByWithRelationInput>? orderBy,
    OrderItemsWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<OrderItemsScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstorder_itemsOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstorder_itemsOrThrow',
    );
    final future = query(OrderItemsScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? OrderItems.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: order_items)'));
    return OrderItemsFluent<OrderItems>(
      future,
      query,
    );
  }

  Future<Iterable<OrderItems>> findMany({
    OrderItemsWhereInput? where,
    Iterable<OrderItemsOrderByWithRelationInput>? orderBy,
    OrderItemsWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<OrderItemsScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findManyorder_items',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findManyorder_items',
    );
    final fields = OrderItemsScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> findManyorderItems) =>
        findManyorderItems.map((Map findManyorderItems) =>
            OrderItems.fromJson(findManyorderItems.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }

  OrderItemsFluent<OrderItems> create({required OrderItemsCreateInput data}) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createOneorder_items',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createOneorder_items',
    );
    final future = query(OrderItemsScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? OrderItems.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: order_items)'));
    return OrderItemsFluent<OrderItems>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> createMany({
    required Iterable<OrderItemsCreateManyInput> data,
    bool? skipDuplicates,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'skipDuplicates',
        skipDuplicates,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createManyorder_items',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createManyorder_items',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map createManyorderItems) =>
        AffectedRowsOutput.fromJson(createManyorderItems.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  OrderItemsFluent<OrderItems?> update({
    required OrderItemsUpdateInput data,
    required OrderItemsWhereUniqueInput where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateOneorder_items',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateOneorder_items',
    );
    final future = query(OrderItemsScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? OrderItems.fromJson(json.cast<String, dynamic>())
            : null);
    return OrderItemsFluent<OrderItems?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> updateMany({
    required OrderItemsUpdateManyMutationInput data,
    OrderItemsWhereInput? where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateManyorder_items',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateManyorder_items',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map updateManyorderItems) =>
        AffectedRowsOutput.fromJson(updateManyorderItems.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  OrderItemsFluent<OrderItems> upsert({
    required OrderItemsWhereUniqueInput where,
    required OrderItemsCreateInput create,
    required OrderItemsUpdateInput update,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'create',
        create,
      ),
      _i2.GraphQLArg(
        r'update',
        update,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'upsertOneorder_items',
          fields: fields,
          args: args,
        )
      ]),
      key: r'upsertOneorder_items',
    );
    final future = query(OrderItemsScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? OrderItems.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: order_items)'));
    return OrderItemsFluent<OrderItems>(
      future,
      query,
    );
  }

  OrderItemsFluent<OrderItems?> delete(
      {required OrderItemsWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteOneorder_items',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteOneorder_items',
    );
    final future = query(OrderItemsScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? OrderItems.fromJson(json.cast<String, dynamic>())
            : null);
    return OrderItemsFluent<OrderItems?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> deleteMany({OrderItemsWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteManyorder_items',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteManyorder_items',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map deleteManyorderItems) =>
        AffectedRowsOutput.fromJson(deleteManyorderItems.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AggregateOrderItems aggregate({
    OrderItemsWhereInput? where,
    Iterable<OrderItemsOrderByWithRelationInput>? orderBy,
    OrderItemsWhereUniqueInput? cursor,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'aggregateorder_items',
          fields: fields,
          args: args,
        )
      ]),
      key: r'aggregateorder_items',
    );
    return AggregateOrderItems(query);
  }

  Future<Iterable<OrderItemsGroupByOutputType>> groupBy({
    OrderItemsWhereInput? where,
    Iterable<OrderItemsOrderByWithAggregationInput>? orderBy,
    required Iterable<OrderItemsScalarFieldEnum> by,
    OrderItemsScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'by',
        by,
      ),
      _i2.GraphQLArg(
        r'having',
        having,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'groupByorder_items',
          fields: fields,
          args: args,
        )
      ]),
      key: r'groupByorder_items',
    );
    final fields = by.map((e) => _i2.GraphQLField(e.originalName ?? e.name));
    compiler(Iterable<Map> groupByorderItems) =>
        groupByorderItems.map((Map groupByorderItems) =>
            OrderItemsGroupByOutputType.fromJson(groupByorderItems.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }
}

@_i1.jsonSerializable
class UserGroupByOutputType implements _i1.JsonSerializable {
  const UserGroupByOutputType({
    this.id,
    this.username,
    this.email,
    this.password,
  });

  factory UserGroupByOutputType.fromJson(Map<String, dynamic> json) =>
      _$UserGroupByOutputTypeFromJson(json);

  final String? id;

  final String? username;

  final String? email;

  final String? password;

  @override
  Map<String, dynamic> toJson() => _$UserGroupByOutputTypeToJson(this);
}

@_i1.jsonSerializable
class ProductGroupByOutputType implements _i1.JsonSerializable {
  const ProductGroupByOutputType({
    this.id,
    this.name,
    this.description,
    this.imgUrl,
    this.price,
  });

  factory ProductGroupByOutputType.fromJson(Map<String, dynamic> json) =>
      _$ProductGroupByOutputTypeFromJson(json);

  final String? id;

  final String? name;

  final String? description;

  @JsonKey(name: r'img_url')
  final String? imgUrl;

  final int? price;

  @override
  Map<String, dynamic> toJson() => _$ProductGroupByOutputTypeToJson(this);
}

@_i1.jsonSerializable
class ProductCommentGroupByOutputType implements _i1.JsonSerializable {
  const ProductCommentGroupByOutputType({
    this.id,
    this.productId,
    this.username,
    this.ratings,
    this.email,
    this.comment,
    this.created,
  });

  factory ProductCommentGroupByOutputType.fromJson(Map<String, dynamic> json) =>
      _$ProductCommentGroupByOutputTypeFromJson(json);

  final String? id;

  final String? productId;

  final String? username;

  final double? ratings;

  final String? email;

  final String? comment;

  final DateTime? created;

  @override
  Map<String, dynamic> toJson() =>
      _$ProductCommentGroupByOutputTypeToJson(this);
}

@_i1.jsonSerializable
class CustomerOrderGroupByOutputType implements _i1.JsonSerializable {
  const CustomerOrderGroupByOutputType({
    this.id,
    this.customerName,
    this.status,
    this.totalPrice,
    this.created,
  });

  factory CustomerOrderGroupByOutputType.fromJson(Map<String, dynamic> json) =>
      _$CustomerOrderGroupByOutputTypeFromJson(json);

  final int? id;

  @JsonKey(name: r'customer_name')
  final String? customerName;

  final String? status;

  final int? totalPrice;

  final DateTime? created;

  @override
  Map<String, dynamic> toJson() => _$CustomerOrderGroupByOutputTypeToJson(this);
}

@_i1.jsonSerializable
class AddressGroupByOutputType implements _i1.JsonSerializable {
  const AddressGroupByOutputType({
    this.street,
    this.district,
    this.number,
    this.city,
    this.customerOrderId,
  });

  factory AddressGroupByOutputType.fromJson(Map<String, dynamic> json) =>
      _$AddressGroupByOutputTypeFromJson(json);

  final String? street;

  final String? district;

  final int? number;

  final String? city;

  @JsonKey(name: r'customer_order_id')
  final int? customerOrderId;

  @override
  Map<String, dynamic> toJson() => _$AddressGroupByOutputTypeToJson(this);
}

@_i1.jsonSerializable
class OrderItemsGroupByOutputType implements _i1.JsonSerializable {
  const OrderItemsGroupByOutputType({
    this.customerOrderId,
    this.amount,
    this.price,
  });

  factory OrderItemsGroupByOutputType.fromJson(Map<String, dynamic> json) =>
      _$OrderItemsGroupByOutputTypeFromJson(json);

  @JsonKey(name: r'customer_order_id')
  final int? customerOrderId;

  final int? amount;

  final int? price;

  @override
  Map<String, dynamic> toJson() => _$OrderItemsGroupByOutputTypeToJson(this);
}

@_i1.jsonSerializable
class AffectedRowsOutput implements _i1.JsonSerializable {
  const AffectedRowsOutput({this.count});

  factory AffectedRowsOutput.fromJson(Map<String, dynamic> json) =>
      _$AffectedRowsOutputFromJson(json);

  final int? count;

  @override
  Map<String, dynamic> toJson() => _$AffectedRowsOutputToJson(this);
}

class AggregateUser {
  const AggregateUser(this.$query);

  final _i1.PrismaFluentQuery $query;

  UserCountAggregateOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return UserCountAggregateOutputType(query);
  }

  UserMinAggregateOutputType $min() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_min',
          fields: fields,
        )
      ]),
      key: r'_min',
    );
    return UserMinAggregateOutputType(query);
  }

  UserMaxAggregateOutputType $max() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_max',
          fields: fields,
        )
      ]),
      key: r'_max',
    );
    return UserMaxAggregateOutputType(query);
  }
}

class AggregateProduct {
  const AggregateProduct(this.$query);

  final _i1.PrismaFluentQuery $query;

  ProductCountAggregateOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return ProductCountAggregateOutputType(query);
  }

  ProductAvgAggregateOutputType $avg() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_avg',
          fields: fields,
        )
      ]),
      key: r'_avg',
    );
    return ProductAvgAggregateOutputType(query);
  }

  ProductSumAggregateOutputType $sum() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_sum',
          fields: fields,
        )
      ]),
      key: r'_sum',
    );
    return ProductSumAggregateOutputType(query);
  }

  ProductMinAggregateOutputType $min() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_min',
          fields: fields,
        )
      ]),
      key: r'_min',
    );
    return ProductMinAggregateOutputType(query);
  }

  ProductMaxAggregateOutputType $max() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_max',
          fields: fields,
        )
      ]),
      key: r'_max',
    );
    return ProductMaxAggregateOutputType(query);
  }
}

class AggregateProductComment {
  const AggregateProductComment(this.$query);

  final _i1.PrismaFluentQuery $query;

  ProductCommentCountAggregateOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return ProductCommentCountAggregateOutputType(query);
  }

  ProductCommentAvgAggregateOutputType $avg() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_avg',
          fields: fields,
        )
      ]),
      key: r'_avg',
    );
    return ProductCommentAvgAggregateOutputType(query);
  }

  ProductCommentSumAggregateOutputType $sum() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_sum',
          fields: fields,
        )
      ]),
      key: r'_sum',
    );
    return ProductCommentSumAggregateOutputType(query);
  }

  ProductCommentMinAggregateOutputType $min() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_min',
          fields: fields,
        )
      ]),
      key: r'_min',
    );
    return ProductCommentMinAggregateOutputType(query);
  }

  ProductCommentMaxAggregateOutputType $max() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_max',
          fields: fields,
        )
      ]),
      key: r'_max',
    );
    return ProductCommentMaxAggregateOutputType(query);
  }
}

class AggregateCustomerOrder {
  const AggregateCustomerOrder(this.$query);

  final _i1.PrismaFluentQuery $query;

  CustomerOrderCountAggregateOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return CustomerOrderCountAggregateOutputType(query);
  }

  CustomerOrderAvgAggregateOutputType $avg() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_avg',
          fields: fields,
        )
      ]),
      key: r'_avg',
    );
    return CustomerOrderAvgAggregateOutputType(query);
  }

  CustomerOrderSumAggregateOutputType $sum() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_sum',
          fields: fields,
        )
      ]),
      key: r'_sum',
    );
    return CustomerOrderSumAggregateOutputType(query);
  }

  CustomerOrderMinAggregateOutputType $min() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_min',
          fields: fields,
        )
      ]),
      key: r'_min',
    );
    return CustomerOrderMinAggregateOutputType(query);
  }

  CustomerOrderMaxAggregateOutputType $max() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_max',
          fields: fields,
        )
      ]),
      key: r'_max',
    );
    return CustomerOrderMaxAggregateOutputType(query);
  }
}

class AggregateAddress {
  const AggregateAddress(this.$query);

  final _i1.PrismaFluentQuery $query;

  AddressCountAggregateOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return AddressCountAggregateOutputType(query);
  }

  AddressAvgAggregateOutputType $avg() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_avg',
          fields: fields,
        )
      ]),
      key: r'_avg',
    );
    return AddressAvgAggregateOutputType(query);
  }

  AddressSumAggregateOutputType $sum() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_sum',
          fields: fields,
        )
      ]),
      key: r'_sum',
    );
    return AddressSumAggregateOutputType(query);
  }

  AddressMinAggregateOutputType $min() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_min',
          fields: fields,
        )
      ]),
      key: r'_min',
    );
    return AddressMinAggregateOutputType(query);
  }

  AddressMaxAggregateOutputType $max() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_max',
          fields: fields,
        )
      ]),
      key: r'_max',
    );
    return AddressMaxAggregateOutputType(query);
  }
}

class AggregateOrderItems {
  const AggregateOrderItems(this.$query);

  final _i1.PrismaFluentQuery $query;

  OrderItemsCountAggregateOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return OrderItemsCountAggregateOutputType(query);
  }

  OrderItemsAvgAggregateOutputType $avg() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_avg',
          fields: fields,
        )
      ]),
      key: r'_avg',
    );
    return OrderItemsAvgAggregateOutputType(query);
  }

  OrderItemsSumAggregateOutputType $sum() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_sum',
          fields: fields,
        )
      ]),
      key: r'_sum',
    );
    return OrderItemsSumAggregateOutputType(query);
  }

  OrderItemsMinAggregateOutputType $min() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_min',
          fields: fields,
        )
      ]),
      key: r'_min',
    );
    return OrderItemsMinAggregateOutputType(query);
  }

  OrderItemsMaxAggregateOutputType $max() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_max',
          fields: fields,
        )
      ]),
      key: r'_max',
    );
    return OrderItemsMaxAggregateOutputType(query);
  }
}

class UserCountAggregateOutputType {
  const UserCountAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> username() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'username',
          fields: fields,
        )
      ]),
      key: r'username',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> email() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'email',
          fields: fields,
        )
      ]),
      key: r'email',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> password() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'password',
          fields: fields,
        )
      ]),
      key: r'password',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> $all() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_all',
          fields: fields,
        )
      ]),
      key: r'_all',
    );
    return query(const []).then((value) => (value as int));
  }
}

class UserMinAggregateOutputType {
  const UserMinAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<String?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> username() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'username',
          fields: fields,
        )
      ]),
      key: r'username',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> email() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'email',
          fields: fields,
        )
      ]),
      key: r'email',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> password() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'password',
          fields: fields,
        )
      ]),
      key: r'password',
    );
    return query(const []).then((value) => (value as String?));
  }
}

class UserMaxAggregateOutputType {
  const UserMaxAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<String?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> username() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'username',
          fields: fields,
        )
      ]),
      key: r'username',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> email() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'email',
          fields: fields,
        )
      ]),
      key: r'email',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> password() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'password',
          fields: fields,
        )
      ]),
      key: r'password',
    );
    return query(const []).then((value) => (value as String?));
  }
}

class ProductCountOutputType {
  const ProductCountOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> productComments({ProductCommentWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'product_comments',
          fields: fields,
          args: args,
        )
      ]),
      key: r'product_comments',
    );
    return query(const []).then((value) => (value as int));
  }
}

class ProductCountAggregateOutputType {
  const ProductCountAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> name() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'name',
          fields: fields,
        )
      ]),
      key: r'name',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> description() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'description',
          fields: fields,
        )
      ]),
      key: r'description',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> imgUrl() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'img_url',
          fields: fields,
        )
      ]),
      key: r'img_url',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> price() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'price',
          fields: fields,
        )
      ]),
      key: r'price',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> $all() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_all',
          fields: fields,
        )
      ]),
      key: r'_all',
    );
    return query(const []).then((value) => (value as int));
  }
}

class ProductAvgAggregateOutputType {
  const ProductAvgAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<double?> price() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'price',
          fields: fields,
        )
      ]),
      key: r'price',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class ProductSumAggregateOutputType {
  const ProductSumAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> price() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'price',
          fields: fields,
        )
      ]),
      key: r'price',
    );
    return query(const []).then((value) => (value as int?));
  }
}

class ProductMinAggregateOutputType {
  const ProductMinAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<String?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> name() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'name',
          fields: fields,
        )
      ]),
      key: r'name',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> description() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'description',
          fields: fields,
        )
      ]),
      key: r'description',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> imgUrl() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'img_url',
          fields: fields,
        )
      ]),
      key: r'img_url',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<int?> price() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'price',
          fields: fields,
        )
      ]),
      key: r'price',
    );
    return query(const []).then((value) => (value as int?));
  }
}

class ProductMaxAggregateOutputType {
  const ProductMaxAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<String?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> name() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'name',
          fields: fields,
        )
      ]),
      key: r'name',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> description() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'description',
          fields: fields,
        )
      ]),
      key: r'description',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> imgUrl() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'img_url',
          fields: fields,
        )
      ]),
      key: r'img_url',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<int?> price() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'price',
          fields: fields,
        )
      ]),
      key: r'price',
    );
    return query(const []).then((value) => (value as int?));
  }
}

class ProductCommentCountAggregateOutputType {
  const ProductCommentCountAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> productId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'productId',
          fields: fields,
        )
      ]),
      key: r'productId',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> username() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'username',
          fields: fields,
        )
      ]),
      key: r'username',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> ratings() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'ratings',
          fields: fields,
        )
      ]),
      key: r'ratings',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> email() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'email',
          fields: fields,
        )
      ]),
      key: r'email',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> comment() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'comment',
          fields: fields,
        )
      ]),
      key: r'comment',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> created() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'created',
          fields: fields,
        )
      ]),
      key: r'created',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> $all() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_all',
          fields: fields,
        )
      ]),
      key: r'_all',
    );
    return query(const []).then((value) => (value as int));
  }
}

class ProductCommentAvgAggregateOutputType {
  const ProductCommentAvgAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<double?> ratings() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'ratings',
          fields: fields,
        )
      ]),
      key: r'ratings',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class ProductCommentSumAggregateOutputType {
  const ProductCommentSumAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<double?> ratings() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'ratings',
          fields: fields,
        )
      ]),
      key: r'ratings',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class ProductCommentMinAggregateOutputType {
  const ProductCommentMinAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<String?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> productId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'productId',
          fields: fields,
        )
      ]),
      key: r'productId',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> username() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'username',
          fields: fields,
        )
      ]),
      key: r'username',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<double?> ratings() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'ratings',
          fields: fields,
        )
      ]),
      key: r'ratings',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<String?> email() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'email',
          fields: fields,
        )
      ]),
      key: r'email',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> comment() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'comment',
          fields: fields,
        )
      ]),
      key: r'comment',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<DateTime?> created() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'created',
          fields: fields,
        )
      ]),
      key: r'created',
    );
    return query(const [])
        .then((value) => value is String ? DateTime.parse(value) : null);
  }
}

class ProductCommentMaxAggregateOutputType {
  const ProductCommentMaxAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<String?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> productId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'productId',
          fields: fields,
        )
      ]),
      key: r'productId',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> username() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'username',
          fields: fields,
        )
      ]),
      key: r'username',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<double?> ratings() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'ratings',
          fields: fields,
        )
      ]),
      key: r'ratings',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<String?> email() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'email',
          fields: fields,
        )
      ]),
      key: r'email',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> comment() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'comment',
          fields: fields,
        )
      ]),
      key: r'comment',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<DateTime?> created() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'created',
          fields: fields,
        )
      ]),
      key: r'created',
    );
    return query(const [])
        .then((value) => value is String ? DateTime.parse(value) : null);
  }
}

class CustomerOrderCountOutputType {
  const CustomerOrderCountOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> address({AddressWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'address',
          fields: fields,
          args: args,
        )
      ]),
      key: r'address',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> orderItems({OrderItemsWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'orderItems',
          fields: fields,
          args: args,
        )
      ]),
      key: r'orderItems',
    );
    return query(const []).then((value) => (value as int));
  }
}

class CustomerOrderCountAggregateOutputType {
  const CustomerOrderCountAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> customerName() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'customer_name',
          fields: fields,
        )
      ]),
      key: r'customer_name',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> status() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'status',
          fields: fields,
        )
      ]),
      key: r'status',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> totalPrice() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'totalPrice',
          fields: fields,
        )
      ]),
      key: r'totalPrice',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> created() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'created',
          fields: fields,
        )
      ]),
      key: r'created',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> $all() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_all',
          fields: fields,
        )
      ]),
      key: r'_all',
    );
    return query(const []).then((value) => (value as int));
  }
}

class CustomerOrderAvgAggregateOutputType {
  const CustomerOrderAvgAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<double?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> totalPrice() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'totalPrice',
          fields: fields,
        )
      ]),
      key: r'totalPrice',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class CustomerOrderSumAggregateOutputType {
  const CustomerOrderSumAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> totalPrice() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'totalPrice',
          fields: fields,
        )
      ]),
      key: r'totalPrice',
    );
    return query(const []).then((value) => (value as int?));
  }
}

class CustomerOrderMinAggregateOutputType {
  const CustomerOrderMinAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> customerName() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'customer_name',
          fields: fields,
        )
      ]),
      key: r'customer_name',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> status() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'status',
          fields: fields,
        )
      ]),
      key: r'status',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<int?> totalPrice() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'totalPrice',
          fields: fields,
        )
      ]),
      key: r'totalPrice',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<DateTime?> created() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'created',
          fields: fields,
        )
      ]),
      key: r'created',
    );
    return query(const [])
        .then((value) => value is String ? DateTime.parse(value) : null);
  }
}

class CustomerOrderMaxAggregateOutputType {
  const CustomerOrderMaxAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> customerName() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'customer_name',
          fields: fields,
        )
      ]),
      key: r'customer_name',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> status() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'status',
          fields: fields,
        )
      ]),
      key: r'status',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<int?> totalPrice() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'totalPrice',
          fields: fields,
        )
      ]),
      key: r'totalPrice',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<DateTime?> created() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'created',
          fields: fields,
        )
      ]),
      key: r'created',
    );
    return query(const [])
        .then((value) => value is String ? DateTime.parse(value) : null);
  }
}

class AddressCountAggregateOutputType {
  const AddressCountAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> street() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'street',
          fields: fields,
        )
      ]),
      key: r'street',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> district() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'district',
          fields: fields,
        )
      ]),
      key: r'district',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> number() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'number',
          fields: fields,
        )
      ]),
      key: r'number',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> city() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'city',
          fields: fields,
        )
      ]),
      key: r'city',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> customerOrderId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'customer_order_id',
          fields: fields,
        )
      ]),
      key: r'customer_order_id',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> $all() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_all',
          fields: fields,
        )
      ]),
      key: r'_all',
    );
    return query(const []).then((value) => (value as int));
  }
}

class AddressAvgAggregateOutputType {
  const AddressAvgAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<double?> number() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'number',
          fields: fields,
        )
      ]),
      key: r'number',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> customerOrderId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'customer_order_id',
          fields: fields,
        )
      ]),
      key: r'customer_order_id',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class AddressSumAggregateOutputType {
  const AddressSumAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> number() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'number',
          fields: fields,
        )
      ]),
      key: r'number',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> customerOrderId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'customer_order_id',
          fields: fields,
        )
      ]),
      key: r'customer_order_id',
    );
    return query(const []).then((value) => (value as int?));
  }
}

class AddressMinAggregateOutputType {
  const AddressMinAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<String?> street() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'street',
          fields: fields,
        )
      ]),
      key: r'street',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> district() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'district',
          fields: fields,
        )
      ]),
      key: r'district',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<int?> number() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'number',
          fields: fields,
        )
      ]),
      key: r'number',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> city() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'city',
          fields: fields,
        )
      ]),
      key: r'city',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<int?> customerOrderId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'customer_order_id',
          fields: fields,
        )
      ]),
      key: r'customer_order_id',
    );
    return query(const []).then((value) => (value as int?));
  }
}

class AddressMaxAggregateOutputType {
  const AddressMaxAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<String?> street() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'street',
          fields: fields,
        )
      ]),
      key: r'street',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> district() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'district',
          fields: fields,
        )
      ]),
      key: r'district',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<int?> number() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'number',
          fields: fields,
        )
      ]),
      key: r'number',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> city() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'city',
          fields: fields,
        )
      ]),
      key: r'city',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<int?> customerOrderId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'customer_order_id',
          fields: fields,
        )
      ]),
      key: r'customer_order_id',
    );
    return query(const []).then((value) => (value as int?));
  }
}

class OrderItemsCountAggregateOutputType {
  const OrderItemsCountAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> customerOrderId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'customer_order_id',
          fields: fields,
        )
      ]),
      key: r'customer_order_id',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> amount() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'amount',
          fields: fields,
        )
      ]),
      key: r'amount',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> price() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'price',
          fields: fields,
        )
      ]),
      key: r'price',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> $all() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_all',
          fields: fields,
        )
      ]),
      key: r'_all',
    );
    return query(const []).then((value) => (value as int));
  }
}

class OrderItemsAvgAggregateOutputType {
  const OrderItemsAvgAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<double?> customerOrderId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'customer_order_id',
          fields: fields,
        )
      ]),
      key: r'customer_order_id',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> amount() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'amount',
          fields: fields,
        )
      ]),
      key: r'amount',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> price() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'price',
          fields: fields,
        )
      ]),
      key: r'price',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class OrderItemsSumAggregateOutputType {
  const OrderItemsSumAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> customerOrderId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'customer_order_id',
          fields: fields,
        )
      ]),
      key: r'customer_order_id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> amount() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'amount',
          fields: fields,
        )
      ]),
      key: r'amount',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> price() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'price',
          fields: fields,
        )
      ]),
      key: r'price',
    );
    return query(const []).then((value) => (value as int?));
  }
}

class OrderItemsMinAggregateOutputType {
  const OrderItemsMinAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> customerOrderId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'customer_order_id',
          fields: fields,
        )
      ]),
      key: r'customer_order_id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> amount() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'amount',
          fields: fields,
        )
      ]),
      key: r'amount',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> price() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'price',
          fields: fields,
        )
      ]),
      key: r'price',
    );
    return query(const []).then((value) => (value as int?));
  }
}

class OrderItemsMaxAggregateOutputType {
  const OrderItemsMaxAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> customerOrderId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'customer_order_id',
          fields: fields,
        )
      ]),
      key: r'customer_order_id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> amount() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'amount',
          fields: fields,
        )
      ]),
      key: r'amount',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> price() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'price',
          fields: fields,
        )
      ]),
      key: r'price',
    );
    return query(const []).then((value) => (value as int?));
  }
}

@JsonSerializable(
  createFactory: false,
  createToJson: true,
  includeIfNull: false,
)
class Datasources implements _i1.JsonSerializable {
  const Datasources({this.db});

  final String? db;

  @override
  Map<String, dynamic> toJson() => _$DatasourcesToJson(this);
}

class PrismaClient extends _i1.BasePrismaClient<PrismaClient> {
  PrismaClient._internal(
    _i3.Engine engine, {
    _i3.QueryEngineRequestHeaders? headers,
    _i3.TransactionInfo? transaction,
  })  : _engine = engine,
        _headers = headers,
        _transaction = transaction,
        super(
          engine,
          headers: headers,
          transaction: transaction,
        );

  factory PrismaClient({
    Datasources? datasources,
    Iterable<_i4.Event>? stdout,
    Iterable<_i4.Event>? event,
  }) {
    final logger = _i4.Logger(
      stdout: stdout,
      event: event,
    );
    final engine = _i5.BinaryEngine(
      logger: logger,
      schema:
          r'Ly8gVGhpcyBpcyB5b3VyIFByaXNtYSBzY2hlbWEgZmlsZSwKLy8gbGVhcm4gbW9yZSBhYm91dCBpdCBpbiB0aGUgZG9jczogaHR0cHM6Ly9wcmlzLmx5L2QvcHJpc21hLXNjaGVtYQoKZ2VuZXJhdG9yIGNsaWVudCB7CiAgcHJvdmlkZXIgPSAiZGFydCBydW4gb3JtIgp9CgpkYXRhc291cmNlIGRiIHsKICBwcm92aWRlciA9ICJwb3N0Z3Jlc3FsIgogIHVybCAgICAgID0gZW52KCJEQVRBQkFTRV9VUkwiKQp9Cgptb2RlbCB1c2VyIHsKICBpZCAgICAgICBTdHJpbmcgQGlkIEBkZWZhdWx0KHV1aWQoKSkgQGRiLlV1aWQKICB1c2VybmFtZSBTdHJpbmcKICBlbWFpbCAgICBTdHJpbmcgQHVuaXF1ZQogIHBhc3N3b3JkIFN0cmluZwp9Cgptb2RlbCBwcm9kdWN0IHsKICBpZCAgICAgICAgICAgICAgIFN0cmluZyAgICAgICAgICAgIEBpZCBAZGVmYXVsdCh1dWlkKCkpIEBkYi5VdWlkCiAgbmFtZSAgICAgICAgICAgICBTdHJpbmcKICBkZXNjcmlwdGlvbiAgICAgIFN0cmluZwogIGltZ191cmwgICAgICAgICAgU3RyaW5nCiAgcHJpY2UgICAgICAgICAgICBJbnQKICBwcm9kdWN0X2NvbW1lbnRzIHByb2R1Y3RfY29tbWVudFtdCn0KCm1vZGVsIHByb2R1Y3RfY29tbWVudCB7CiAgaWQgICAgICAgIFN0cmluZyAgIEBpZCBAZGVmYXVsdCh1dWlkKCkpIEBkYi5VdWlkCiAgcHJvZHVjdCAgIHByb2R1Y3QgIEByZWxhdGlvbihmaWVsZHM6IFtwcm9kdWN0SWRdLCByZWZlcmVuY2VzOiBbaWRdKQogIHByb2R1Y3RJZCBTdHJpbmcgICBAZGIuVXVpZAogIHVzZXJuYW1lICBTdHJpbmcKICByYXRpbmdzICAgRmxvYXQKICBlbWFpbCAgICAgU3RyaW5nICAgQHVuaXF1ZQogIGNvbW1lbnQgICBTdHJpbmcKICBjcmVhdGVkICAgRGF0ZVRpbWUgQGRiLkRhdGUKfQoKbW9kZWwgY3VzdG9tZXJfb3JkZXIgewogIGlkICAgICAgICAgICAgSW50ICAgICAgICAgICBAaWQgQGRlZmF1bHQoYXV0b2luY3JlbWVudCgpKQogIGN1c3RvbWVyX25hbWUgU3RyaW5nCiAgc3RhdHVzICAgICAgICBTdHJpbmcKICBhZGRyZXNzICAgICAgIGFkZHJlc3NbXQogIHRvdGFsUHJpY2UgICAgSW50CiAgY3JlYXRlZCAgICAgICBEYXRlVGltZSAgICAgIEBkYi5EYXRlCiAgb3JkZXJJdGVtcyAgICBvcmRlcl9pdGVtc1tdCn0KCm1vZGVsIGFkZHJlc3MgewogIHN0cmVldCAgICAgICAgICAgIFN0cmluZwogIGRpc3RyaWN0ICAgICAgICAgIFN0cmluZwogIG51bWJlciAgICAgICAgICAgIEludAogIGNpdHkgICAgICAgICAgICAgIFN0cmluZwogIGN1c3RvbWVyX29yZGVyX2lkIEludCAgICAgICAgICAgIEB1bmlxdWUKICBjdXN0b21lcl9vcmRlciAgICBjdXN0b21lcl9vcmRlciBAcmVsYXRpb24oZmllbGRzOiBbY3VzdG9tZXJfb3JkZXJfaWRdLCByZWZlcmVuY2VzOiBbaWRdKQp9Cgptb2RlbCBvcmRlcl9pdGVtcyB7CiAgY3VzdG9tZXJPcmRlciAgICAgY3VzdG9tZXJfb3JkZXIgQHJlbGF0aW9uKGZpZWxkczogW2N1c3RvbWVyX29yZGVyX2lkXSwgcmVmZXJlbmNlczogW2lkXSkKICBjdXN0b21lcl9vcmRlcl9pZCBJbnQgICAgICAgICAgICBAdW5pcXVlCiAgYW1vdW50ICAgICAgICAgICAgSW50CiAgcHJpY2UgICAgICAgICAgICAgSW50Cn0K',
      datasources: datasources?.toJson().cast() ?? const {},
      executable:
          r'/home/ernando/Documentos/lessons/clean-code-lessons/delivery_project_using_clean_code/node_modules/prisma/query-engine-debian-openssl-3.0.x',
    );
    return PrismaClient._internal(engine);
  }

  final _i3.Engine _engine;

  final _i3.QueryEngineRequestHeaders? _headers;

  final _i3.TransactionInfo? _transaction;

  @override
  PrismaClient copyWith({
    _i3.QueryEngineRequestHeaders? headers,
    _i3.TransactionInfo? transaction,
  }) =>
      PrismaClient._internal(
        _engine,
        headers: headers ?? _headers,
        transaction: transaction ?? _transaction,
      );

  _i1.ModelDelegate<User> get user => _i1.ModelDelegate<User>(
        _engine,
        headers: _headers,
        transaction: _transaction,
      );

  _i1.ModelDelegate<Product> get product => _i1.ModelDelegate<Product>(
        _engine,
        headers: _headers,
        transaction: _transaction,
      );

  _i1.ModelDelegate<ProductComment> get productComment =>
      _i1.ModelDelegate<ProductComment>(
        _engine,
        headers: _headers,
        transaction: _transaction,
      );

  _i1.ModelDelegate<CustomerOrder> get customerOrder =>
      _i1.ModelDelegate<CustomerOrder>(
        _engine,
        headers: _headers,
        transaction: _transaction,
      );

  _i1.ModelDelegate<Address> get address => _i1.ModelDelegate<Address>(
        _engine,
        headers: _headers,
        transaction: _transaction,
      );

  _i1.ModelDelegate<OrderItems> get orderItems => _i1.ModelDelegate<OrderItems>(
        _engine,
        headers: _headers,
        transaction: _transaction,
      );
}
