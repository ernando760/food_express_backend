// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prisma_client.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserWhereInput _$UserWhereInputFromJson(Map<String, dynamic> json) =>
    UserWhereInput(
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => UserWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => UserWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)
          ?.map((e) => UserWhereInput.fromJson(e as Map<String, dynamic>)),
      id: json['id'] == null
          ? null
          : UuidFilter.fromJson(json['id'] as Map<String, dynamic>),
      username: json['username'] == null
          ? null
          : StringFilter.fromJson(json['username'] as Map<String, dynamic>),
      email: json['email'] == null
          ? null
          : StringFilter.fromJson(json['email'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : StringFilter.fromJson(json['password'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserWhereInputToJson(UserWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('username', instance.username?.toJson());
  writeNotNull('email', instance.email?.toJson());
  writeNotNull('password', instance.password?.toJson());
  return val;
}

UserOrderByWithRelationInput _$UserOrderByWithRelationInputFromJson(
        Map<String, dynamic> json) =>
    UserOrderByWithRelationInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      username: $enumDecodeNullable(_$SortOrderEnumMap, json['username']),
      email: $enumDecodeNullable(_$SortOrderEnumMap, json['email']),
      password: $enumDecodeNullable(_$SortOrderEnumMap, json['password']),
    );

Map<String, dynamic> _$UserOrderByWithRelationInputToJson(
    UserOrderByWithRelationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('username', _$SortOrderEnumMap[instance.username]);
  writeNotNull('email', _$SortOrderEnumMap[instance.email]);
  writeNotNull('password', _$SortOrderEnumMap[instance.password]);
  return val;
}

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};

UserWhereUniqueInput _$UserWhereUniqueInputFromJson(
        Map<String, dynamic> json) =>
    UserWhereUniqueInput(
      id: json['id'] as String?,
      email: json['email'] as String?,
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => UserWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => UserWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)
          ?.map((e) => UserWhereInput.fromJson(e as Map<String, dynamic>)),
      username: json['username'] == null
          ? null
          : StringFilter.fromJson(json['username'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : StringFilter.fromJson(json['password'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserWhereUniqueInputToJson(
    UserWhereUniqueInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('email', instance.email);
  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('username', instance.username?.toJson());
  writeNotNull('password', instance.password?.toJson());
  return val;
}

UserOrderByWithAggregationInput _$UserOrderByWithAggregationInputFromJson(
        Map<String, dynamic> json) =>
    UserOrderByWithAggregationInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      username: $enumDecodeNullable(_$SortOrderEnumMap, json['username']),
      email: $enumDecodeNullable(_$SortOrderEnumMap, json['email']),
      password: $enumDecodeNullable(_$SortOrderEnumMap, json['password']),
      $count: json['_count'] == null
          ? null
          : UserCountOrderByAggregateInput.fromJson(
              json['_count'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : UserMaxOrderByAggregateInput.fromJson(
              json['_max'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : UserMinOrderByAggregateInput.fromJson(
              json['_min'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserOrderByWithAggregationInputToJson(
    UserOrderByWithAggregationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('username', _$SortOrderEnumMap[instance.username]);
  writeNotNull('email', _$SortOrderEnumMap[instance.email]);
  writeNotNull('password', _$SortOrderEnumMap[instance.password]);
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  return val;
}

UserScalarWhereWithAggregatesInput _$UserScalarWhereWithAggregatesInputFromJson(
        Map<String, dynamic> json) =>
    UserScalarWhereWithAggregatesInput(
      AND: (json['AND'] as List<dynamic>?)?.map((e) =>
          UserScalarWhereWithAggregatesInput.fromJson(
              e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)?.map((e) =>
          UserScalarWhereWithAggregatesInput.fromJson(
              e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)?.map((e) =>
          UserScalarWhereWithAggregatesInput.fromJson(
              e as Map<String, dynamic>)),
      id: json['id'] == null
          ? null
          : UuidWithAggregatesFilter.fromJson(
              json['id'] as Map<String, dynamic>),
      username: json['username'] == null
          ? null
          : StringWithAggregatesFilter.fromJson(
              json['username'] as Map<String, dynamic>),
      email: json['email'] == null
          ? null
          : StringWithAggregatesFilter.fromJson(
              json['email'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : StringWithAggregatesFilter.fromJson(
              json['password'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserScalarWhereWithAggregatesInputToJson(
    UserScalarWhereWithAggregatesInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('username', instance.username?.toJson());
  writeNotNull('email', instance.email?.toJson());
  writeNotNull('password', instance.password?.toJson());
  return val;
}

ProductWhereInput _$ProductWhereInputFromJson(Map<String, dynamic> json) =>
    ProductWhereInput(
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => ProductWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => ProductWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)
          ?.map((e) => ProductWhereInput.fromJson(e as Map<String, dynamic>)),
      id: json['id'] == null
          ? null
          : UuidFilter.fromJson(json['id'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringFilter.fromJson(json['name'] as Map<String, dynamic>),
      description: json['description'] == null
          ? null
          : StringFilter.fromJson(json['description'] as Map<String, dynamic>),
      imgUrl: json['img_url'] == null
          ? null
          : StringFilter.fromJson(json['img_url'] as Map<String, dynamic>),
      price: json['price'] == null
          ? null
          : IntFilter.fromJson(json['price'] as Map<String, dynamic>),
      productComments: json['product_comments'] == null
          ? null
          : ProductCommentListRelationFilter.fromJson(
              json['product_comments'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductWhereInputToJson(ProductWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('description', instance.description?.toJson());
  writeNotNull('img_url', instance.imgUrl?.toJson());
  writeNotNull('price', instance.price?.toJson());
  writeNotNull('product_comments', instance.productComments?.toJson());
  return val;
}

ProductOrderByWithRelationInput _$ProductOrderByWithRelationInputFromJson(
        Map<String, dynamic> json) =>
    ProductOrderByWithRelationInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      name: $enumDecodeNullable(_$SortOrderEnumMap, json['name']),
      description: $enumDecodeNullable(_$SortOrderEnumMap, json['description']),
      imgUrl: $enumDecodeNullable(_$SortOrderEnumMap, json['img_url']),
      price: $enumDecodeNullable(_$SortOrderEnumMap, json['price']),
      productComments: json['product_comments'] == null
          ? null
          : ProductCommentOrderByRelationAggregateInput.fromJson(
              json['product_comments'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductOrderByWithRelationInputToJson(
    ProductOrderByWithRelationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('name', _$SortOrderEnumMap[instance.name]);
  writeNotNull('description', _$SortOrderEnumMap[instance.description]);
  writeNotNull('img_url', _$SortOrderEnumMap[instance.imgUrl]);
  writeNotNull('price', _$SortOrderEnumMap[instance.price]);
  writeNotNull('product_comments', instance.productComments?.toJson());
  return val;
}

ProductWhereUniqueInput _$ProductWhereUniqueInputFromJson(
        Map<String, dynamic> json) =>
    ProductWhereUniqueInput(
      id: json['id'] as String?,
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => ProductWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => ProductWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)
          ?.map((e) => ProductWhereInput.fromJson(e as Map<String, dynamic>)),
      name: json['name'] == null
          ? null
          : StringFilter.fromJson(json['name'] as Map<String, dynamic>),
      description: json['description'] == null
          ? null
          : StringFilter.fromJson(json['description'] as Map<String, dynamic>),
      imgUrl: json['img_url'] == null
          ? null
          : StringFilter.fromJson(json['img_url'] as Map<String, dynamic>),
      price: json['price'] == null
          ? null
          : IntFilter.fromJson(json['price'] as Map<String, dynamic>),
      productComments: json['product_comments'] == null
          ? null
          : ProductCommentListRelationFilter.fromJson(
              json['product_comments'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductWhereUniqueInputToJson(
    ProductWhereUniqueInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('description', instance.description?.toJson());
  writeNotNull('img_url', instance.imgUrl?.toJson());
  writeNotNull('price', instance.price?.toJson());
  writeNotNull('product_comments', instance.productComments?.toJson());
  return val;
}

ProductOrderByWithAggregationInput _$ProductOrderByWithAggregationInputFromJson(
        Map<String, dynamic> json) =>
    ProductOrderByWithAggregationInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      name: $enumDecodeNullable(_$SortOrderEnumMap, json['name']),
      description: $enumDecodeNullable(_$SortOrderEnumMap, json['description']),
      imgUrl: $enumDecodeNullable(_$SortOrderEnumMap, json['img_url']),
      price: $enumDecodeNullable(_$SortOrderEnumMap, json['price']),
      $count: json['_count'] == null
          ? null
          : ProductCountOrderByAggregateInput.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : ProductAvgOrderByAggregateInput.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : ProductMaxOrderByAggregateInput.fromJson(
              json['_max'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : ProductMinOrderByAggregateInput.fromJson(
              json['_min'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : ProductSumOrderByAggregateInput.fromJson(
              json['_sum'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductOrderByWithAggregationInputToJson(
    ProductOrderByWithAggregationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('name', _$SortOrderEnumMap[instance.name]);
  writeNotNull('description', _$SortOrderEnumMap[instance.description]);
  writeNotNull('img_url', _$SortOrderEnumMap[instance.imgUrl]);
  writeNotNull('price', _$SortOrderEnumMap[instance.price]);
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  return val;
}

ProductScalarWhereWithAggregatesInput
    _$ProductScalarWhereWithAggregatesInputFromJson(
            Map<String, dynamic> json) =>
        ProductScalarWhereWithAggregatesInput(
          AND: (json['AND'] as List<dynamic>?)?.map((e) =>
              ProductScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          OR: (json['OR'] as List<dynamic>?)?.map((e) =>
              ProductScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          NOT: (json['NOT'] as List<dynamic>?)?.map((e) =>
              ProductScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          id: json['id'] == null
              ? null
              : UuidWithAggregatesFilter.fromJson(
                  json['id'] as Map<String, dynamic>),
          name: json['name'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['name'] as Map<String, dynamic>),
          description: json['description'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['description'] as Map<String, dynamic>),
          imgUrl: json['img_url'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['img_url'] as Map<String, dynamic>),
          price: json['price'] == null
              ? null
              : IntWithAggregatesFilter.fromJson(
                  json['price'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$ProductScalarWhereWithAggregatesInputToJson(
    ProductScalarWhereWithAggregatesInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('description', instance.description?.toJson());
  writeNotNull('img_url', instance.imgUrl?.toJson());
  writeNotNull('price', instance.price?.toJson());
  return val;
}

ProductCommentWhereInput _$ProductCommentWhereInputFromJson(
        Map<String, dynamic> json) =>
    ProductCommentWhereInput(
      AND: (json['AND'] as List<dynamic>?)?.map(
          (e) => ProductCommentWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)?.map(
          (e) => ProductCommentWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)?.map(
          (e) => ProductCommentWhereInput.fromJson(e as Map<String, dynamic>)),
      id: json['id'] == null
          ? null
          : UuidFilter.fromJson(json['id'] as Map<String, dynamic>),
      productId: json['productId'] == null
          ? null
          : UuidFilter.fromJson(json['productId'] as Map<String, dynamic>),
      username: json['username'] == null
          ? null
          : StringFilter.fromJson(json['username'] as Map<String, dynamic>),
      ratings: json['ratings'] == null
          ? null
          : FloatFilter.fromJson(json['ratings'] as Map<String, dynamic>),
      email: json['email'] == null
          ? null
          : StringFilter.fromJson(json['email'] as Map<String, dynamic>),
      comment: json['comment'] == null
          ? null
          : StringFilter.fromJson(json['comment'] as Map<String, dynamic>),
      created: json['created'] == null
          ? null
          : DateTimeFilter.fromJson(json['created'] as Map<String, dynamic>),
      product: json['product'] == null
          ? null
          : ProductRelationFilter.fromJson(
              json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductCommentWhereInputToJson(
    ProductCommentWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('productId', instance.productId?.toJson());
  writeNotNull('username', instance.username?.toJson());
  writeNotNull('ratings', instance.ratings?.toJson());
  writeNotNull('email', instance.email?.toJson());
  writeNotNull('comment', instance.comment?.toJson());
  writeNotNull('created', instance.created?.toJson());
  writeNotNull('product', instance.product?.toJson());
  return val;
}

ProductCommentOrderByWithRelationInput
    _$ProductCommentOrderByWithRelationInputFromJson(
            Map<String, dynamic> json) =>
        ProductCommentOrderByWithRelationInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          productId: $enumDecodeNullable(_$SortOrderEnumMap, json['productId']),
          username: $enumDecodeNullable(_$SortOrderEnumMap, json['username']),
          ratings: $enumDecodeNullable(_$SortOrderEnumMap, json['ratings']),
          email: $enumDecodeNullable(_$SortOrderEnumMap, json['email']),
          comment: $enumDecodeNullable(_$SortOrderEnumMap, json['comment']),
          created: $enumDecodeNullable(_$SortOrderEnumMap, json['created']),
          product: json['product'] == null
              ? null
              : ProductOrderByWithRelationInput.fromJson(
                  json['product'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$ProductCommentOrderByWithRelationInputToJson(
    ProductCommentOrderByWithRelationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('productId', _$SortOrderEnumMap[instance.productId]);
  writeNotNull('username', _$SortOrderEnumMap[instance.username]);
  writeNotNull('ratings', _$SortOrderEnumMap[instance.ratings]);
  writeNotNull('email', _$SortOrderEnumMap[instance.email]);
  writeNotNull('comment', _$SortOrderEnumMap[instance.comment]);
  writeNotNull('created', _$SortOrderEnumMap[instance.created]);
  writeNotNull('product', instance.product?.toJson());
  return val;
}

ProductCommentWhereUniqueInput _$ProductCommentWhereUniqueInputFromJson(
        Map<String, dynamic> json) =>
    ProductCommentWhereUniqueInput(
      id: json['id'] as String?,
      email: json['email'] as String?,
      AND: (json['AND'] as List<dynamic>?)?.map(
          (e) => ProductCommentWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)?.map(
          (e) => ProductCommentWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)?.map(
          (e) => ProductCommentWhereInput.fromJson(e as Map<String, dynamic>)),
      productId: json['productId'] == null
          ? null
          : UuidFilter.fromJson(json['productId'] as Map<String, dynamic>),
      username: json['username'] == null
          ? null
          : StringFilter.fromJson(json['username'] as Map<String, dynamic>),
      ratings: json['ratings'] == null
          ? null
          : FloatFilter.fromJson(json['ratings'] as Map<String, dynamic>),
      comment: json['comment'] == null
          ? null
          : StringFilter.fromJson(json['comment'] as Map<String, dynamic>),
      created: json['created'] == null
          ? null
          : DateTimeFilter.fromJson(json['created'] as Map<String, dynamic>),
      product: json['product'] == null
          ? null
          : ProductRelationFilter.fromJson(
              json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductCommentWhereUniqueInputToJson(
    ProductCommentWhereUniqueInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('email', instance.email);
  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('productId', instance.productId?.toJson());
  writeNotNull('username', instance.username?.toJson());
  writeNotNull('ratings', instance.ratings?.toJson());
  writeNotNull('comment', instance.comment?.toJson());
  writeNotNull('created', instance.created?.toJson());
  writeNotNull('product', instance.product?.toJson());
  return val;
}

ProductCommentOrderByWithAggregationInput
    _$ProductCommentOrderByWithAggregationInputFromJson(
            Map<String, dynamic> json) =>
        ProductCommentOrderByWithAggregationInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          productId: $enumDecodeNullable(_$SortOrderEnumMap, json['productId']),
          username: $enumDecodeNullable(_$SortOrderEnumMap, json['username']),
          ratings: $enumDecodeNullable(_$SortOrderEnumMap, json['ratings']),
          email: $enumDecodeNullable(_$SortOrderEnumMap, json['email']),
          comment: $enumDecodeNullable(_$SortOrderEnumMap, json['comment']),
          created: $enumDecodeNullable(_$SortOrderEnumMap, json['created']),
          $count: json['_count'] == null
              ? null
              : ProductCommentCountOrderByAggregateInput.fromJson(
                  json['_count'] as Map<String, dynamic>),
          $avg: json['_avg'] == null
              ? null
              : ProductCommentAvgOrderByAggregateInput.fromJson(
                  json['_avg'] as Map<String, dynamic>),
          $max: json['_max'] == null
              ? null
              : ProductCommentMaxOrderByAggregateInput.fromJson(
                  json['_max'] as Map<String, dynamic>),
          $min: json['_min'] == null
              ? null
              : ProductCommentMinOrderByAggregateInput.fromJson(
                  json['_min'] as Map<String, dynamic>),
          $sum: json['_sum'] == null
              ? null
              : ProductCommentSumOrderByAggregateInput.fromJson(
                  json['_sum'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$ProductCommentOrderByWithAggregationInputToJson(
    ProductCommentOrderByWithAggregationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('productId', _$SortOrderEnumMap[instance.productId]);
  writeNotNull('username', _$SortOrderEnumMap[instance.username]);
  writeNotNull('ratings', _$SortOrderEnumMap[instance.ratings]);
  writeNotNull('email', _$SortOrderEnumMap[instance.email]);
  writeNotNull('comment', _$SortOrderEnumMap[instance.comment]);
  writeNotNull('created', _$SortOrderEnumMap[instance.created]);
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  return val;
}

ProductCommentScalarWhereWithAggregatesInput
    _$ProductCommentScalarWhereWithAggregatesInputFromJson(
            Map<String, dynamic> json) =>
        ProductCommentScalarWhereWithAggregatesInput(
          AND: (json['AND'] as List<dynamic>?)?.map((e) =>
              ProductCommentScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          OR: (json['OR'] as List<dynamic>?)?.map((e) =>
              ProductCommentScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          NOT: (json['NOT'] as List<dynamic>?)?.map((e) =>
              ProductCommentScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          id: json['id'] == null
              ? null
              : UuidWithAggregatesFilter.fromJson(
                  json['id'] as Map<String, dynamic>),
          productId: json['productId'] == null
              ? null
              : UuidWithAggregatesFilter.fromJson(
                  json['productId'] as Map<String, dynamic>),
          username: json['username'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['username'] as Map<String, dynamic>),
          ratings: json['ratings'] == null
              ? null
              : FloatWithAggregatesFilter.fromJson(
                  json['ratings'] as Map<String, dynamic>),
          email: json['email'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['email'] as Map<String, dynamic>),
          comment: json['comment'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['comment'] as Map<String, dynamic>),
          created: json['created'] == null
              ? null
              : DateTimeWithAggregatesFilter.fromJson(
                  json['created'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$ProductCommentScalarWhereWithAggregatesInputToJson(
    ProductCommentScalarWhereWithAggregatesInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('productId', instance.productId?.toJson());
  writeNotNull('username', instance.username?.toJson());
  writeNotNull('ratings', instance.ratings?.toJson());
  writeNotNull('email', instance.email?.toJson());
  writeNotNull('comment', instance.comment?.toJson());
  writeNotNull('created', instance.created?.toJson());
  return val;
}

CustomerOrderWhereInput _$CustomerOrderWhereInputFromJson(
        Map<String, dynamic> json) =>
    CustomerOrderWhereInput(
      AND: (json['AND'] as List<dynamic>?)?.map(
          (e) => CustomerOrderWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)?.map(
          (e) => CustomerOrderWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)?.map(
          (e) => CustomerOrderWhereInput.fromJson(e as Map<String, dynamic>)),
      id: json['id'] == null
          ? null
          : IntFilter.fromJson(json['id'] as Map<String, dynamic>),
      customerName: json['customer_name'] == null
          ? null
          : StringFilter.fromJson(
              json['customer_name'] as Map<String, dynamic>),
      status: json['status'] == null
          ? null
          : StringFilter.fromJson(json['status'] as Map<String, dynamic>),
      totalPrice: json['totalPrice'] == null
          ? null
          : IntFilter.fromJson(json['totalPrice'] as Map<String, dynamic>),
      created: json['created'] == null
          ? null
          : DateTimeFilter.fromJson(json['created'] as Map<String, dynamic>),
      address: json['address'] == null
          ? null
          : AddressListRelationFilter.fromJson(
              json['address'] as Map<String, dynamic>),
      orderItems: json['orderItems'] == null
          ? null
          : OrderItemsListRelationFilter.fromJson(
              json['orderItems'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CustomerOrderWhereInputToJson(
    CustomerOrderWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('customer_name', instance.customerName?.toJson());
  writeNotNull('status', instance.status?.toJson());
  writeNotNull('totalPrice', instance.totalPrice?.toJson());
  writeNotNull('created', instance.created?.toJson());
  writeNotNull('address', instance.address?.toJson());
  writeNotNull('orderItems', instance.orderItems?.toJson());
  return val;
}

CustomerOrderOrderByWithRelationInput
    _$CustomerOrderOrderByWithRelationInputFromJson(
            Map<String, dynamic> json) =>
        CustomerOrderOrderByWithRelationInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          customerName:
              $enumDecodeNullable(_$SortOrderEnumMap, json['customer_name']),
          status: $enumDecodeNullable(_$SortOrderEnumMap, json['status']),
          totalPrice:
              $enumDecodeNullable(_$SortOrderEnumMap, json['totalPrice']),
          created: $enumDecodeNullable(_$SortOrderEnumMap, json['created']),
          address: json['address'] == null
              ? null
              : AddressOrderByRelationAggregateInput.fromJson(
                  json['address'] as Map<String, dynamic>),
          orderItems: json['orderItems'] == null
              ? null
              : OrderItemsOrderByRelationAggregateInput.fromJson(
                  json['orderItems'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CustomerOrderOrderByWithRelationInputToJson(
    CustomerOrderOrderByWithRelationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('customer_name', _$SortOrderEnumMap[instance.customerName]);
  writeNotNull('status', _$SortOrderEnumMap[instance.status]);
  writeNotNull('totalPrice', _$SortOrderEnumMap[instance.totalPrice]);
  writeNotNull('created', _$SortOrderEnumMap[instance.created]);
  writeNotNull('address', instance.address?.toJson());
  writeNotNull('orderItems', instance.orderItems?.toJson());
  return val;
}

CustomerOrderWhereUniqueInput _$CustomerOrderWhereUniqueInputFromJson(
        Map<String, dynamic> json) =>
    CustomerOrderWhereUniqueInput(
      id: json['id'] as int?,
      AND: (json['AND'] as List<dynamic>?)?.map(
          (e) => CustomerOrderWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)?.map(
          (e) => CustomerOrderWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)?.map(
          (e) => CustomerOrderWhereInput.fromJson(e as Map<String, dynamic>)),
      customerName: json['customer_name'] == null
          ? null
          : StringFilter.fromJson(
              json['customer_name'] as Map<String, dynamic>),
      status: json['status'] == null
          ? null
          : StringFilter.fromJson(json['status'] as Map<String, dynamic>),
      totalPrice: json['totalPrice'] == null
          ? null
          : IntFilter.fromJson(json['totalPrice'] as Map<String, dynamic>),
      created: json['created'] == null
          ? null
          : DateTimeFilter.fromJson(json['created'] as Map<String, dynamic>),
      address: json['address'] == null
          ? null
          : AddressListRelationFilter.fromJson(
              json['address'] as Map<String, dynamic>),
      orderItems: json['orderItems'] == null
          ? null
          : OrderItemsListRelationFilter.fromJson(
              json['orderItems'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CustomerOrderWhereUniqueInputToJson(
    CustomerOrderWhereUniqueInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('customer_name', instance.customerName?.toJson());
  writeNotNull('status', instance.status?.toJson());
  writeNotNull('totalPrice', instance.totalPrice?.toJson());
  writeNotNull('created', instance.created?.toJson());
  writeNotNull('address', instance.address?.toJson());
  writeNotNull('orderItems', instance.orderItems?.toJson());
  return val;
}

CustomerOrderOrderByWithAggregationInput
    _$CustomerOrderOrderByWithAggregationInputFromJson(
            Map<String, dynamic> json) =>
        CustomerOrderOrderByWithAggregationInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          customerName:
              $enumDecodeNullable(_$SortOrderEnumMap, json['customer_name']),
          status: $enumDecodeNullable(_$SortOrderEnumMap, json['status']),
          totalPrice:
              $enumDecodeNullable(_$SortOrderEnumMap, json['totalPrice']),
          created: $enumDecodeNullable(_$SortOrderEnumMap, json['created']),
          $count: json['_count'] == null
              ? null
              : CustomerOrderCountOrderByAggregateInput.fromJson(
                  json['_count'] as Map<String, dynamic>),
          $avg: json['_avg'] == null
              ? null
              : CustomerOrderAvgOrderByAggregateInput.fromJson(
                  json['_avg'] as Map<String, dynamic>),
          $max: json['_max'] == null
              ? null
              : CustomerOrderMaxOrderByAggregateInput.fromJson(
                  json['_max'] as Map<String, dynamic>),
          $min: json['_min'] == null
              ? null
              : CustomerOrderMinOrderByAggregateInput.fromJson(
                  json['_min'] as Map<String, dynamic>),
          $sum: json['_sum'] == null
              ? null
              : CustomerOrderSumOrderByAggregateInput.fromJson(
                  json['_sum'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CustomerOrderOrderByWithAggregationInputToJson(
    CustomerOrderOrderByWithAggregationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('customer_name', _$SortOrderEnumMap[instance.customerName]);
  writeNotNull('status', _$SortOrderEnumMap[instance.status]);
  writeNotNull('totalPrice', _$SortOrderEnumMap[instance.totalPrice]);
  writeNotNull('created', _$SortOrderEnumMap[instance.created]);
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  return val;
}

CustomerOrderScalarWhereWithAggregatesInput
    _$CustomerOrderScalarWhereWithAggregatesInputFromJson(
            Map<String, dynamic> json) =>
        CustomerOrderScalarWhereWithAggregatesInput(
          AND: (json['AND'] as List<dynamic>?)?.map((e) =>
              CustomerOrderScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          OR: (json['OR'] as List<dynamic>?)?.map((e) =>
              CustomerOrderScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          NOT: (json['NOT'] as List<dynamic>?)?.map((e) =>
              CustomerOrderScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          id: json['id'] == null
              ? null
              : IntWithAggregatesFilter.fromJson(
                  json['id'] as Map<String, dynamic>),
          customerName: json['customer_name'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['customer_name'] as Map<String, dynamic>),
          status: json['status'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['status'] as Map<String, dynamic>),
          totalPrice: json['totalPrice'] == null
              ? null
              : IntWithAggregatesFilter.fromJson(
                  json['totalPrice'] as Map<String, dynamic>),
          created: json['created'] == null
              ? null
              : DateTimeWithAggregatesFilter.fromJson(
                  json['created'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CustomerOrderScalarWhereWithAggregatesInputToJson(
    CustomerOrderScalarWhereWithAggregatesInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('customer_name', instance.customerName?.toJson());
  writeNotNull('status', instance.status?.toJson());
  writeNotNull('totalPrice', instance.totalPrice?.toJson());
  writeNotNull('created', instance.created?.toJson());
  return val;
}

AddressWhereInput _$AddressWhereInputFromJson(Map<String, dynamic> json) =>
    AddressWhereInput(
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => AddressWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => AddressWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)
          ?.map((e) => AddressWhereInput.fromJson(e as Map<String, dynamic>)),
      street: json['street'] == null
          ? null
          : StringFilter.fromJson(json['street'] as Map<String, dynamic>),
      district: json['district'] == null
          ? null
          : StringFilter.fromJson(json['district'] as Map<String, dynamic>),
      number: json['number'] == null
          ? null
          : IntFilter.fromJson(json['number'] as Map<String, dynamic>),
      city: json['city'] == null
          ? null
          : StringFilter.fromJson(json['city'] as Map<String, dynamic>),
      customerOrderId: json['customer_order_id'] == null
          ? null
          : IntFilter.fromJson(
              json['customer_order_id'] as Map<String, dynamic>),
      customerOrder: json['customer_order'] == null
          ? null
          : CustomerOrderRelationFilter.fromJson(
              json['customer_order'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddressWhereInputToJson(AddressWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('street', instance.street?.toJson());
  writeNotNull('district', instance.district?.toJson());
  writeNotNull('number', instance.number?.toJson());
  writeNotNull('city', instance.city?.toJson());
  writeNotNull('customer_order_id', instance.customerOrderId?.toJson());
  writeNotNull('customer_order', instance.customerOrder?.toJson());
  return val;
}

AddressOrderByWithRelationInput _$AddressOrderByWithRelationInputFromJson(
        Map<String, dynamic> json) =>
    AddressOrderByWithRelationInput(
      street: $enumDecodeNullable(_$SortOrderEnumMap, json['street']),
      district: $enumDecodeNullable(_$SortOrderEnumMap, json['district']),
      number: $enumDecodeNullable(_$SortOrderEnumMap, json['number']),
      city: $enumDecodeNullable(_$SortOrderEnumMap, json['city']),
      customerOrderId:
          $enumDecodeNullable(_$SortOrderEnumMap, json['customer_order_id']),
      customerOrder: json['customer_order'] == null
          ? null
          : CustomerOrderOrderByWithRelationInput.fromJson(
              json['customer_order'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddressOrderByWithRelationInputToJson(
    AddressOrderByWithRelationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('street', _$SortOrderEnumMap[instance.street]);
  writeNotNull('district', _$SortOrderEnumMap[instance.district]);
  writeNotNull('number', _$SortOrderEnumMap[instance.number]);
  writeNotNull('city', _$SortOrderEnumMap[instance.city]);
  writeNotNull(
      'customer_order_id', _$SortOrderEnumMap[instance.customerOrderId]);
  writeNotNull('customer_order', instance.customerOrder?.toJson());
  return val;
}

AddressWhereUniqueInput _$AddressWhereUniqueInputFromJson(
        Map<String, dynamic> json) =>
    AddressWhereUniqueInput(
      customerOrderId: json['customer_order_id'] as int?,
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => AddressWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => AddressWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)
          ?.map((e) => AddressWhereInput.fromJson(e as Map<String, dynamic>)),
      street: json['street'] == null
          ? null
          : StringFilter.fromJson(json['street'] as Map<String, dynamic>),
      district: json['district'] == null
          ? null
          : StringFilter.fromJson(json['district'] as Map<String, dynamic>),
      number: json['number'] == null
          ? null
          : IntFilter.fromJson(json['number'] as Map<String, dynamic>),
      city: json['city'] == null
          ? null
          : StringFilter.fromJson(json['city'] as Map<String, dynamic>),
      customerOrder: json['customer_order'] == null
          ? null
          : CustomerOrderRelationFilter.fromJson(
              json['customer_order'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddressWhereUniqueInputToJson(
    AddressWhereUniqueInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('customer_order_id', instance.customerOrderId);
  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('street', instance.street?.toJson());
  writeNotNull('district', instance.district?.toJson());
  writeNotNull('number', instance.number?.toJson());
  writeNotNull('city', instance.city?.toJson());
  writeNotNull('customer_order', instance.customerOrder?.toJson());
  return val;
}

AddressOrderByWithAggregationInput _$AddressOrderByWithAggregationInputFromJson(
        Map<String, dynamic> json) =>
    AddressOrderByWithAggregationInput(
      street: $enumDecodeNullable(_$SortOrderEnumMap, json['street']),
      district: $enumDecodeNullable(_$SortOrderEnumMap, json['district']),
      number: $enumDecodeNullable(_$SortOrderEnumMap, json['number']),
      city: $enumDecodeNullable(_$SortOrderEnumMap, json['city']),
      customerOrderId:
          $enumDecodeNullable(_$SortOrderEnumMap, json['customer_order_id']),
      $count: json['_count'] == null
          ? null
          : AddressCountOrderByAggregateInput.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : AddressAvgOrderByAggregateInput.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : AddressMaxOrderByAggregateInput.fromJson(
              json['_max'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : AddressMinOrderByAggregateInput.fromJson(
              json['_min'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : AddressSumOrderByAggregateInput.fromJson(
              json['_sum'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddressOrderByWithAggregationInputToJson(
    AddressOrderByWithAggregationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('street', _$SortOrderEnumMap[instance.street]);
  writeNotNull('district', _$SortOrderEnumMap[instance.district]);
  writeNotNull('number', _$SortOrderEnumMap[instance.number]);
  writeNotNull('city', _$SortOrderEnumMap[instance.city]);
  writeNotNull(
      'customer_order_id', _$SortOrderEnumMap[instance.customerOrderId]);
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  return val;
}

AddressScalarWhereWithAggregatesInput
    _$AddressScalarWhereWithAggregatesInputFromJson(
            Map<String, dynamic> json) =>
        AddressScalarWhereWithAggregatesInput(
          AND: (json['AND'] as List<dynamic>?)?.map((e) =>
              AddressScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          OR: (json['OR'] as List<dynamic>?)?.map((e) =>
              AddressScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          NOT: (json['NOT'] as List<dynamic>?)?.map((e) =>
              AddressScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          street: json['street'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['street'] as Map<String, dynamic>),
          district: json['district'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['district'] as Map<String, dynamic>),
          number: json['number'] == null
              ? null
              : IntWithAggregatesFilter.fromJson(
                  json['number'] as Map<String, dynamic>),
          city: json['city'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['city'] as Map<String, dynamic>),
          customerOrderId: json['customer_order_id'] == null
              ? null
              : IntWithAggregatesFilter.fromJson(
                  json['customer_order_id'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$AddressScalarWhereWithAggregatesInputToJson(
    AddressScalarWhereWithAggregatesInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('street', instance.street?.toJson());
  writeNotNull('district', instance.district?.toJson());
  writeNotNull('number', instance.number?.toJson());
  writeNotNull('city', instance.city?.toJson());
  writeNotNull('customer_order_id', instance.customerOrderId?.toJson());
  return val;
}

OrderItemsWhereInput _$OrderItemsWhereInputFromJson(
        Map<String, dynamic> json) =>
    OrderItemsWhereInput(
      AND: (json['AND'] as List<dynamic>?)?.map(
          (e) => OrderItemsWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)?.map(
          (e) => OrderItemsWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)?.map(
          (e) => OrderItemsWhereInput.fromJson(e as Map<String, dynamic>)),
      customerOrderId: json['customer_order_id'] == null
          ? null
          : IntFilter.fromJson(
              json['customer_order_id'] as Map<String, dynamic>),
      amount: json['amount'] == null
          ? null
          : IntFilter.fromJson(json['amount'] as Map<String, dynamic>),
      price: json['price'] == null
          ? null
          : IntFilter.fromJson(json['price'] as Map<String, dynamic>),
      customerOrder: json['customerOrder'] == null
          ? null
          : CustomerOrderRelationFilter.fromJson(
              json['customerOrder'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderItemsWhereInputToJson(
    OrderItemsWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('customer_order_id', instance.customerOrderId?.toJson());
  writeNotNull('amount', instance.amount?.toJson());
  writeNotNull('price', instance.price?.toJson());
  writeNotNull('customerOrder', instance.customerOrder?.toJson());
  return val;
}

OrderItemsOrderByWithRelationInput _$OrderItemsOrderByWithRelationInputFromJson(
        Map<String, dynamic> json) =>
    OrderItemsOrderByWithRelationInput(
      customerOrderId:
          $enumDecodeNullable(_$SortOrderEnumMap, json['customer_order_id']),
      amount: $enumDecodeNullable(_$SortOrderEnumMap, json['amount']),
      price: $enumDecodeNullable(_$SortOrderEnumMap, json['price']),
      customerOrder: json['customerOrder'] == null
          ? null
          : CustomerOrderOrderByWithRelationInput.fromJson(
              json['customerOrder'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderItemsOrderByWithRelationInputToJson(
    OrderItemsOrderByWithRelationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'customer_order_id', _$SortOrderEnumMap[instance.customerOrderId]);
  writeNotNull('amount', _$SortOrderEnumMap[instance.amount]);
  writeNotNull('price', _$SortOrderEnumMap[instance.price]);
  writeNotNull('customerOrder', instance.customerOrder?.toJson());
  return val;
}

OrderItemsWhereUniqueInput _$OrderItemsWhereUniqueInputFromJson(
        Map<String, dynamic> json) =>
    OrderItemsWhereUniqueInput(
      customerOrderId: json['customer_order_id'] as int?,
      AND: (json['AND'] as List<dynamic>?)?.map(
          (e) => OrderItemsWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)?.map(
          (e) => OrderItemsWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)?.map(
          (e) => OrderItemsWhereInput.fromJson(e as Map<String, dynamic>)),
      amount: json['amount'] == null
          ? null
          : IntFilter.fromJson(json['amount'] as Map<String, dynamic>),
      price: json['price'] == null
          ? null
          : IntFilter.fromJson(json['price'] as Map<String, dynamic>),
      customerOrder: json['customerOrder'] == null
          ? null
          : CustomerOrderRelationFilter.fromJson(
              json['customerOrder'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderItemsWhereUniqueInputToJson(
    OrderItemsWhereUniqueInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('customer_order_id', instance.customerOrderId);
  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('amount', instance.amount?.toJson());
  writeNotNull('price', instance.price?.toJson());
  writeNotNull('customerOrder', instance.customerOrder?.toJson());
  return val;
}

OrderItemsOrderByWithAggregationInput
    _$OrderItemsOrderByWithAggregationInputFromJson(
            Map<String, dynamic> json) =>
        OrderItemsOrderByWithAggregationInput(
          customerOrderId: $enumDecodeNullable(
              _$SortOrderEnumMap, json['customer_order_id']),
          amount: $enumDecodeNullable(_$SortOrderEnumMap, json['amount']),
          price: $enumDecodeNullable(_$SortOrderEnumMap, json['price']),
          $count: json['_count'] == null
              ? null
              : OrderItemsCountOrderByAggregateInput.fromJson(
                  json['_count'] as Map<String, dynamic>),
          $avg: json['_avg'] == null
              ? null
              : OrderItemsAvgOrderByAggregateInput.fromJson(
                  json['_avg'] as Map<String, dynamic>),
          $max: json['_max'] == null
              ? null
              : OrderItemsMaxOrderByAggregateInput.fromJson(
                  json['_max'] as Map<String, dynamic>),
          $min: json['_min'] == null
              ? null
              : OrderItemsMinOrderByAggregateInput.fromJson(
                  json['_min'] as Map<String, dynamic>),
          $sum: json['_sum'] == null
              ? null
              : OrderItemsSumOrderByAggregateInput.fromJson(
                  json['_sum'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$OrderItemsOrderByWithAggregationInputToJson(
    OrderItemsOrderByWithAggregationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'customer_order_id', _$SortOrderEnumMap[instance.customerOrderId]);
  writeNotNull('amount', _$SortOrderEnumMap[instance.amount]);
  writeNotNull('price', _$SortOrderEnumMap[instance.price]);
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  return val;
}

OrderItemsScalarWhereWithAggregatesInput
    _$OrderItemsScalarWhereWithAggregatesInputFromJson(
            Map<String, dynamic> json) =>
        OrderItemsScalarWhereWithAggregatesInput(
          AND: (json['AND'] as List<dynamic>?)?.map((e) =>
              OrderItemsScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          OR: (json['OR'] as List<dynamic>?)?.map((e) =>
              OrderItemsScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          NOT: (json['NOT'] as List<dynamic>?)?.map((e) =>
              OrderItemsScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          customerOrderId: json['customer_order_id'] == null
              ? null
              : IntWithAggregatesFilter.fromJson(
                  json['customer_order_id'] as Map<String, dynamic>),
          amount: json['amount'] == null
              ? null
              : IntWithAggregatesFilter.fromJson(
                  json['amount'] as Map<String, dynamic>),
          price: json['price'] == null
              ? null
              : IntWithAggregatesFilter.fromJson(
                  json['price'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$OrderItemsScalarWhereWithAggregatesInputToJson(
    OrderItemsScalarWhereWithAggregatesInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('customer_order_id', instance.customerOrderId?.toJson());
  writeNotNull('amount', instance.amount?.toJson());
  writeNotNull('price', instance.price?.toJson());
  return val;
}

UserCreateInput _$UserCreateInputFromJson(Map<String, dynamic> json) =>
    UserCreateInput(
      id: json['id'] as String?,
      username: json['username'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$UserCreateInputToJson(UserCreateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['username'] = instance.username;
  val['email'] = instance.email;
  val['password'] = instance.password;
  return val;
}

UserUncheckedCreateInput _$UserUncheckedCreateInputFromJson(
        Map<String, dynamic> json) =>
    UserUncheckedCreateInput(
      id: json['id'] as String?,
      username: json['username'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$UserUncheckedCreateInputToJson(
    UserUncheckedCreateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['username'] = instance.username;
  val['email'] = instance.email;
  val['password'] = instance.password;
  return val;
}

UserUpdateInput _$UserUpdateInputFromJson(Map<String, dynamic> json) =>
    UserUpdateInput(
      id: json['id'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      username: json['username'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['username'] as Map<String, dynamic>),
      email: json['email'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['email'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['password'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserUpdateInputToJson(UserUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('username', instance.username?.toJson());
  writeNotNull('email', instance.email?.toJson());
  writeNotNull('password', instance.password?.toJson());
  return val;
}

UserUncheckedUpdateInput _$UserUncheckedUpdateInputFromJson(
        Map<String, dynamic> json) =>
    UserUncheckedUpdateInput(
      id: json['id'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      username: json['username'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['username'] as Map<String, dynamic>),
      email: json['email'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['email'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['password'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserUncheckedUpdateInputToJson(
    UserUncheckedUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('username', instance.username?.toJson());
  writeNotNull('email', instance.email?.toJson());
  writeNotNull('password', instance.password?.toJson());
  return val;
}

UserCreateManyInput _$UserCreateManyInputFromJson(Map<String, dynamic> json) =>
    UserCreateManyInput(
      id: json['id'] as String?,
      username: json['username'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$UserCreateManyInputToJson(UserCreateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['username'] = instance.username;
  val['email'] = instance.email;
  val['password'] = instance.password;
  return val;
}

UserUpdateManyMutationInput _$UserUpdateManyMutationInputFromJson(
        Map<String, dynamic> json) =>
    UserUpdateManyMutationInput(
      id: json['id'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      username: json['username'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['username'] as Map<String, dynamic>),
      email: json['email'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['email'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['password'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserUpdateManyMutationInputToJson(
    UserUpdateManyMutationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('username', instance.username?.toJson());
  writeNotNull('email', instance.email?.toJson());
  writeNotNull('password', instance.password?.toJson());
  return val;
}

UserUncheckedUpdateManyInput _$UserUncheckedUpdateManyInputFromJson(
        Map<String, dynamic> json) =>
    UserUncheckedUpdateManyInput(
      id: json['id'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      username: json['username'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['username'] as Map<String, dynamic>),
      email: json['email'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['email'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['password'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserUncheckedUpdateManyInputToJson(
    UserUncheckedUpdateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('username', instance.username?.toJson());
  writeNotNull('email', instance.email?.toJson());
  writeNotNull('password', instance.password?.toJson());
  return val;
}

ProductCreateInput _$ProductCreateInputFromJson(Map<String, dynamic> json) =>
    ProductCreateInput(
      id: json['id'] as String?,
      name: json['name'] as String,
      description: json['description'] as String,
      imgUrl: json['img_url'] as String,
      price: json['price'] as int,
      productComments: json['product_comments'] == null
          ? null
          : ProductCommentCreateNestedManyWithoutProductInput.fromJson(
              json['product_comments'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductCreateInputToJson(ProductCreateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['name'] = instance.name;
  val['description'] = instance.description;
  val['img_url'] = instance.imgUrl;
  val['price'] = instance.price;
  writeNotNull('product_comments', instance.productComments?.toJson());
  return val;
}

ProductUncheckedCreateInput _$ProductUncheckedCreateInputFromJson(
        Map<String, dynamic> json) =>
    ProductUncheckedCreateInput(
      id: json['id'] as String?,
      name: json['name'] as String,
      description: json['description'] as String,
      imgUrl: json['img_url'] as String,
      price: json['price'] as int,
      productComments: json['product_comments'] == null
          ? null
          : ProductCommentUncheckedCreateNestedManyWithoutProductInput.fromJson(
              json['product_comments'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductUncheckedCreateInputToJson(
    ProductUncheckedCreateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['name'] = instance.name;
  val['description'] = instance.description;
  val['img_url'] = instance.imgUrl;
  val['price'] = instance.price;
  writeNotNull('product_comments', instance.productComments?.toJson());
  return val;
}

ProductUpdateInput _$ProductUpdateInputFromJson(Map<String, dynamic> json) =>
    ProductUpdateInput(
      id: json['id'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['name'] as Map<String, dynamic>),
      description: json['description'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['description'] as Map<String, dynamic>),
      imgUrl: json['img_url'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['img_url'] as Map<String, dynamic>),
      price: json['price'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['price'] as Map<String, dynamic>),
      productComments: json['product_comments'] == null
          ? null
          : ProductCommentUpdateManyWithoutProductNestedInput.fromJson(
              json['product_comments'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductUpdateInputToJson(ProductUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('description', instance.description?.toJson());
  writeNotNull('img_url', instance.imgUrl?.toJson());
  writeNotNull('price', instance.price?.toJson());
  writeNotNull('product_comments', instance.productComments?.toJson());
  return val;
}

ProductUncheckedUpdateInput _$ProductUncheckedUpdateInputFromJson(
        Map<String, dynamic> json) =>
    ProductUncheckedUpdateInput(
      id: json['id'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['name'] as Map<String, dynamic>),
      description: json['description'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['description'] as Map<String, dynamic>),
      imgUrl: json['img_url'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['img_url'] as Map<String, dynamic>),
      price: json['price'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['price'] as Map<String, dynamic>),
      productComments: json['product_comments'] == null
          ? null
          : ProductCommentUncheckedUpdateManyWithoutProductNestedInput.fromJson(
              json['product_comments'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductUncheckedUpdateInputToJson(
    ProductUncheckedUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('description', instance.description?.toJson());
  writeNotNull('img_url', instance.imgUrl?.toJson());
  writeNotNull('price', instance.price?.toJson());
  writeNotNull('product_comments', instance.productComments?.toJson());
  return val;
}

ProductCreateManyInput _$ProductCreateManyInputFromJson(
        Map<String, dynamic> json) =>
    ProductCreateManyInput(
      id: json['id'] as String?,
      name: json['name'] as String,
      description: json['description'] as String,
      imgUrl: json['img_url'] as String,
      price: json['price'] as int,
    );

Map<String, dynamic> _$ProductCreateManyInputToJson(
    ProductCreateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['name'] = instance.name;
  val['description'] = instance.description;
  val['img_url'] = instance.imgUrl;
  val['price'] = instance.price;
  return val;
}

ProductUpdateManyMutationInput _$ProductUpdateManyMutationInputFromJson(
        Map<String, dynamic> json) =>
    ProductUpdateManyMutationInput(
      id: json['id'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['name'] as Map<String, dynamic>),
      description: json['description'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['description'] as Map<String, dynamic>),
      imgUrl: json['img_url'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['img_url'] as Map<String, dynamic>),
      price: json['price'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['price'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductUpdateManyMutationInputToJson(
    ProductUpdateManyMutationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('description', instance.description?.toJson());
  writeNotNull('img_url', instance.imgUrl?.toJson());
  writeNotNull('price', instance.price?.toJson());
  return val;
}

ProductUncheckedUpdateManyInput _$ProductUncheckedUpdateManyInputFromJson(
        Map<String, dynamic> json) =>
    ProductUncheckedUpdateManyInput(
      id: json['id'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['name'] as Map<String, dynamic>),
      description: json['description'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['description'] as Map<String, dynamic>),
      imgUrl: json['img_url'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['img_url'] as Map<String, dynamic>),
      price: json['price'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['price'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductUncheckedUpdateManyInputToJson(
    ProductUncheckedUpdateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('description', instance.description?.toJson());
  writeNotNull('img_url', instance.imgUrl?.toJson());
  writeNotNull('price', instance.price?.toJson());
  return val;
}

ProductCommentCreateInput _$ProductCommentCreateInputFromJson(
        Map<String, dynamic> json) =>
    ProductCommentCreateInput(
      id: json['id'] as String?,
      username: json['username'] as String,
      ratings: (json['ratings'] as num).toDouble(),
      email: json['email'] as String,
      comment: json['comment'] as String,
      created:
          const DateTimeJsonConverter().fromJson(json['created'] as String),
      product: ProductCreateNestedOneWithoutProductCommentsInput.fromJson(
          json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductCommentCreateInputToJson(
    ProductCommentCreateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['username'] = instance.username;
  val['ratings'] = instance.ratings;
  val['email'] = instance.email;
  val['comment'] = instance.comment;
  val['created'] = const DateTimeJsonConverter().toJson(instance.created);
  val['product'] = instance.product.toJson();
  return val;
}

ProductCommentUncheckedCreateInput _$ProductCommentUncheckedCreateInputFromJson(
        Map<String, dynamic> json) =>
    ProductCommentUncheckedCreateInput(
      id: json['id'] as String?,
      productId: json['productId'] as String,
      username: json['username'] as String,
      ratings: (json['ratings'] as num).toDouble(),
      email: json['email'] as String,
      comment: json['comment'] as String,
      created:
          const DateTimeJsonConverter().fromJson(json['created'] as String),
    );

Map<String, dynamic> _$ProductCommentUncheckedCreateInputToJson(
    ProductCommentUncheckedCreateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['productId'] = instance.productId;
  val['username'] = instance.username;
  val['ratings'] = instance.ratings;
  val['email'] = instance.email;
  val['comment'] = instance.comment;
  val['created'] = const DateTimeJsonConverter().toJson(instance.created);
  return val;
}

ProductCommentUpdateInput _$ProductCommentUpdateInputFromJson(
        Map<String, dynamic> json) =>
    ProductCommentUpdateInput(
      id: json['id'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      username: json['username'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['username'] as Map<String, dynamic>),
      ratings: json['ratings'] == null
          ? null
          : FloatFieldUpdateOperationsInput.fromJson(
              json['ratings'] as Map<String, dynamic>),
      email: json['email'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['email'] as Map<String, dynamic>),
      comment: json['comment'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['comment'] as Map<String, dynamic>),
      created: json['created'] == null
          ? null
          : DateTimeFieldUpdateOperationsInput.fromJson(
              json['created'] as Map<String, dynamic>),
      product: json['product'] == null
          ? null
          : ProductUpdateOneRequiredWithoutProductCommentsNestedInput.fromJson(
              json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductCommentUpdateInputToJson(
    ProductCommentUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('username', instance.username?.toJson());
  writeNotNull('ratings', instance.ratings?.toJson());
  writeNotNull('email', instance.email?.toJson());
  writeNotNull('comment', instance.comment?.toJson());
  writeNotNull('created', instance.created?.toJson());
  writeNotNull('product', instance.product?.toJson());
  return val;
}

ProductCommentUncheckedUpdateInput _$ProductCommentUncheckedUpdateInputFromJson(
        Map<String, dynamic> json) =>
    ProductCommentUncheckedUpdateInput(
      id: json['id'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      productId: json['productId'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['productId'] as Map<String, dynamic>),
      username: json['username'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['username'] as Map<String, dynamic>),
      ratings: json['ratings'] == null
          ? null
          : FloatFieldUpdateOperationsInput.fromJson(
              json['ratings'] as Map<String, dynamic>),
      email: json['email'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['email'] as Map<String, dynamic>),
      comment: json['comment'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['comment'] as Map<String, dynamic>),
      created: json['created'] == null
          ? null
          : DateTimeFieldUpdateOperationsInput.fromJson(
              json['created'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductCommentUncheckedUpdateInputToJson(
    ProductCommentUncheckedUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('productId', instance.productId?.toJson());
  writeNotNull('username', instance.username?.toJson());
  writeNotNull('ratings', instance.ratings?.toJson());
  writeNotNull('email', instance.email?.toJson());
  writeNotNull('comment', instance.comment?.toJson());
  writeNotNull('created', instance.created?.toJson());
  return val;
}

ProductCommentCreateManyInput _$ProductCommentCreateManyInputFromJson(
        Map<String, dynamic> json) =>
    ProductCommentCreateManyInput(
      id: json['id'] as String?,
      productId: json['productId'] as String,
      username: json['username'] as String,
      ratings: (json['ratings'] as num).toDouble(),
      email: json['email'] as String,
      comment: json['comment'] as String,
      created:
          const DateTimeJsonConverter().fromJson(json['created'] as String),
    );

Map<String, dynamic> _$ProductCommentCreateManyInputToJson(
    ProductCommentCreateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['productId'] = instance.productId;
  val['username'] = instance.username;
  val['ratings'] = instance.ratings;
  val['email'] = instance.email;
  val['comment'] = instance.comment;
  val['created'] = const DateTimeJsonConverter().toJson(instance.created);
  return val;
}

ProductCommentUpdateManyMutationInput
    _$ProductCommentUpdateManyMutationInputFromJson(
            Map<String, dynamic> json) =>
        ProductCommentUpdateManyMutationInput(
          id: json['id'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['id'] as Map<String, dynamic>),
          username: json['username'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['username'] as Map<String, dynamic>),
          ratings: json['ratings'] == null
              ? null
              : FloatFieldUpdateOperationsInput.fromJson(
                  json['ratings'] as Map<String, dynamic>),
          email: json['email'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['email'] as Map<String, dynamic>),
          comment: json['comment'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['comment'] as Map<String, dynamic>),
          created: json['created'] == null
              ? null
              : DateTimeFieldUpdateOperationsInput.fromJson(
                  json['created'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$ProductCommentUpdateManyMutationInputToJson(
    ProductCommentUpdateManyMutationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('username', instance.username?.toJson());
  writeNotNull('ratings', instance.ratings?.toJson());
  writeNotNull('email', instance.email?.toJson());
  writeNotNull('comment', instance.comment?.toJson());
  writeNotNull('created', instance.created?.toJson());
  return val;
}

ProductCommentUncheckedUpdateManyInput
    _$ProductCommentUncheckedUpdateManyInputFromJson(
            Map<String, dynamic> json) =>
        ProductCommentUncheckedUpdateManyInput(
          id: json['id'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['id'] as Map<String, dynamic>),
          productId: json['productId'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['productId'] as Map<String, dynamic>),
          username: json['username'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['username'] as Map<String, dynamic>),
          ratings: json['ratings'] == null
              ? null
              : FloatFieldUpdateOperationsInput.fromJson(
                  json['ratings'] as Map<String, dynamic>),
          email: json['email'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['email'] as Map<String, dynamic>),
          comment: json['comment'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['comment'] as Map<String, dynamic>),
          created: json['created'] == null
              ? null
              : DateTimeFieldUpdateOperationsInput.fromJson(
                  json['created'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$ProductCommentUncheckedUpdateManyInputToJson(
    ProductCommentUncheckedUpdateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('productId', instance.productId?.toJson());
  writeNotNull('username', instance.username?.toJson());
  writeNotNull('ratings', instance.ratings?.toJson());
  writeNotNull('email', instance.email?.toJson());
  writeNotNull('comment', instance.comment?.toJson());
  writeNotNull('created', instance.created?.toJson());
  return val;
}

CustomerOrderCreateInput _$CustomerOrderCreateInputFromJson(
        Map<String, dynamic> json) =>
    CustomerOrderCreateInput(
      customerName: json['customer_name'] as String,
      status: json['status'] as String,
      totalPrice: json['totalPrice'] as int,
      created:
          const DateTimeJsonConverter().fromJson(json['created'] as String),
      address: json['address'] == null
          ? null
          : AddressCreateNestedManyWithoutCustomerOrderInput.fromJson(
              json['address'] as Map<String, dynamic>),
      orderItems: json['orderItems'] == null
          ? null
          : OrderItemsCreateNestedManyWithoutCustomerOrderInput.fromJson(
              json['orderItems'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CustomerOrderCreateInputToJson(
    CustomerOrderCreateInput instance) {
  final val = <String, dynamic>{
    'customer_name': instance.customerName,
    'status': instance.status,
    'totalPrice': instance.totalPrice,
    'created': const DateTimeJsonConverter().toJson(instance.created),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('address', instance.address?.toJson());
  writeNotNull('orderItems', instance.orderItems?.toJson());
  return val;
}

CustomerOrderUncheckedCreateInput _$CustomerOrderUncheckedCreateInputFromJson(
        Map<String, dynamic> json) =>
    CustomerOrderUncheckedCreateInput(
      id: json['id'] as int?,
      customerName: json['customer_name'] as String,
      status: json['status'] as String,
      totalPrice: json['totalPrice'] as int,
      created:
          const DateTimeJsonConverter().fromJson(json['created'] as String),
      address: json['address'] == null
          ? null
          : AddressUncheckedCreateNestedManyWithoutCustomerOrderInput.fromJson(
              json['address'] as Map<String, dynamic>),
      orderItems: json['orderItems'] == null
          ? null
          : OrderItemsUncheckedCreateNestedManyWithoutCustomerOrderInput
              .fromJson(json['orderItems'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CustomerOrderUncheckedCreateInputToJson(
    CustomerOrderUncheckedCreateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['customer_name'] = instance.customerName;
  val['status'] = instance.status;
  val['totalPrice'] = instance.totalPrice;
  val['created'] = const DateTimeJsonConverter().toJson(instance.created);
  writeNotNull('address', instance.address?.toJson());
  writeNotNull('orderItems', instance.orderItems?.toJson());
  return val;
}

CustomerOrderUpdateInput _$CustomerOrderUpdateInputFromJson(
        Map<String, dynamic> json) =>
    CustomerOrderUpdateInput(
      customerName: json['customer_name'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['customer_name'] as Map<String, dynamic>),
      status: json['status'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['status'] as Map<String, dynamic>),
      totalPrice: json['totalPrice'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['totalPrice'] as Map<String, dynamic>),
      created: json['created'] == null
          ? null
          : DateTimeFieldUpdateOperationsInput.fromJson(
              json['created'] as Map<String, dynamic>),
      address: json['address'] == null
          ? null
          : AddressUpdateManyWithoutCustomerOrderNestedInput.fromJson(
              json['address'] as Map<String, dynamic>),
      orderItems: json['orderItems'] == null
          ? null
          : OrderItemsUpdateManyWithoutCustomerOrderNestedInput.fromJson(
              json['orderItems'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CustomerOrderUpdateInputToJson(
    CustomerOrderUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('customer_name', instance.customerName?.toJson());
  writeNotNull('status', instance.status?.toJson());
  writeNotNull('totalPrice', instance.totalPrice?.toJson());
  writeNotNull('created', instance.created?.toJson());
  writeNotNull('address', instance.address?.toJson());
  writeNotNull('orderItems', instance.orderItems?.toJson());
  return val;
}

CustomerOrderUncheckedUpdateInput _$CustomerOrderUncheckedUpdateInputFromJson(
        Map<String, dynamic> json) =>
    CustomerOrderUncheckedUpdateInput(
      id: json['id'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      customerName: json['customer_name'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['customer_name'] as Map<String, dynamic>),
      status: json['status'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['status'] as Map<String, dynamic>),
      totalPrice: json['totalPrice'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['totalPrice'] as Map<String, dynamic>),
      created: json['created'] == null
          ? null
          : DateTimeFieldUpdateOperationsInput.fromJson(
              json['created'] as Map<String, dynamic>),
      address: json['address'] == null
          ? null
          : AddressUncheckedUpdateManyWithoutCustomerOrderNestedInput.fromJson(
              json['address'] as Map<String, dynamic>),
      orderItems: json['orderItems'] == null
          ? null
          : OrderItemsUncheckedUpdateManyWithoutCustomerOrderNestedInput
              .fromJson(json['orderItems'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CustomerOrderUncheckedUpdateInputToJson(
    CustomerOrderUncheckedUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('customer_name', instance.customerName?.toJson());
  writeNotNull('status', instance.status?.toJson());
  writeNotNull('totalPrice', instance.totalPrice?.toJson());
  writeNotNull('created', instance.created?.toJson());
  writeNotNull('address', instance.address?.toJson());
  writeNotNull('orderItems', instance.orderItems?.toJson());
  return val;
}

CustomerOrderCreateManyInput _$CustomerOrderCreateManyInputFromJson(
        Map<String, dynamic> json) =>
    CustomerOrderCreateManyInput(
      id: json['id'] as int?,
      customerName: json['customer_name'] as String,
      status: json['status'] as String,
      totalPrice: json['totalPrice'] as int,
      created:
          const DateTimeJsonConverter().fromJson(json['created'] as String),
    );

Map<String, dynamic> _$CustomerOrderCreateManyInputToJson(
    CustomerOrderCreateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['customer_name'] = instance.customerName;
  val['status'] = instance.status;
  val['totalPrice'] = instance.totalPrice;
  val['created'] = const DateTimeJsonConverter().toJson(instance.created);
  return val;
}

CustomerOrderUpdateManyMutationInput
    _$CustomerOrderUpdateManyMutationInputFromJson(Map<String, dynamic> json) =>
        CustomerOrderUpdateManyMutationInput(
          customerName: json['customer_name'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['customer_name'] as Map<String, dynamic>),
          status: json['status'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['status'] as Map<String, dynamic>),
          totalPrice: json['totalPrice'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['totalPrice'] as Map<String, dynamic>),
          created: json['created'] == null
              ? null
              : DateTimeFieldUpdateOperationsInput.fromJson(
                  json['created'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CustomerOrderUpdateManyMutationInputToJson(
    CustomerOrderUpdateManyMutationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('customer_name', instance.customerName?.toJson());
  writeNotNull('status', instance.status?.toJson());
  writeNotNull('totalPrice', instance.totalPrice?.toJson());
  writeNotNull('created', instance.created?.toJson());
  return val;
}

CustomerOrderUncheckedUpdateManyInput
    _$CustomerOrderUncheckedUpdateManyInputFromJson(
            Map<String, dynamic> json) =>
        CustomerOrderUncheckedUpdateManyInput(
          id: json['id'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['id'] as Map<String, dynamic>),
          customerName: json['customer_name'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['customer_name'] as Map<String, dynamic>),
          status: json['status'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['status'] as Map<String, dynamic>),
          totalPrice: json['totalPrice'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['totalPrice'] as Map<String, dynamic>),
          created: json['created'] == null
              ? null
              : DateTimeFieldUpdateOperationsInput.fromJson(
                  json['created'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CustomerOrderUncheckedUpdateManyInputToJson(
    CustomerOrderUncheckedUpdateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('customer_name', instance.customerName?.toJson());
  writeNotNull('status', instance.status?.toJson());
  writeNotNull('totalPrice', instance.totalPrice?.toJson());
  writeNotNull('created', instance.created?.toJson());
  return val;
}

AddressCreateInput _$AddressCreateInputFromJson(Map<String, dynamic> json) =>
    AddressCreateInput(
      street: json['street'] as String,
      district: json['district'] as String,
      number: json['number'] as int,
      city: json['city'] as String,
      customerOrder: CustomerOrderCreateNestedOneWithoutAddressInput.fromJson(
          json['customer_order'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddressCreateInputToJson(AddressCreateInput instance) =>
    <String, dynamic>{
      'street': instance.street,
      'district': instance.district,
      'number': instance.number,
      'city': instance.city,
      'customer_order': instance.customerOrder.toJson(),
    };

AddressUncheckedCreateInput _$AddressUncheckedCreateInputFromJson(
        Map<String, dynamic> json) =>
    AddressUncheckedCreateInput(
      street: json['street'] as String,
      district: json['district'] as String,
      number: json['number'] as int,
      city: json['city'] as String,
      customerOrderId: json['customer_order_id'] as int,
    );

Map<String, dynamic> _$AddressUncheckedCreateInputToJson(
        AddressUncheckedCreateInput instance) =>
    <String, dynamic>{
      'street': instance.street,
      'district': instance.district,
      'number': instance.number,
      'city': instance.city,
      'customer_order_id': instance.customerOrderId,
    };

AddressUpdateInput _$AddressUpdateInputFromJson(Map<String, dynamic> json) =>
    AddressUpdateInput(
      street: json['street'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['street'] as Map<String, dynamic>),
      district: json['district'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['district'] as Map<String, dynamic>),
      number: json['number'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['number'] as Map<String, dynamic>),
      city: json['city'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['city'] as Map<String, dynamic>),
      customerOrder: json['customer_order'] == null
          ? null
          : CustomerOrderUpdateOneRequiredWithoutAddressNestedInput.fromJson(
              json['customer_order'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddressUpdateInputToJson(AddressUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('street', instance.street?.toJson());
  writeNotNull('district', instance.district?.toJson());
  writeNotNull('number', instance.number?.toJson());
  writeNotNull('city', instance.city?.toJson());
  writeNotNull('customer_order', instance.customerOrder?.toJson());
  return val;
}

AddressUncheckedUpdateInput _$AddressUncheckedUpdateInputFromJson(
        Map<String, dynamic> json) =>
    AddressUncheckedUpdateInput(
      street: json['street'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['street'] as Map<String, dynamic>),
      district: json['district'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['district'] as Map<String, dynamic>),
      number: json['number'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['number'] as Map<String, dynamic>),
      city: json['city'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['city'] as Map<String, dynamic>),
      customerOrderId: json['customer_order_id'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['customer_order_id'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddressUncheckedUpdateInputToJson(
    AddressUncheckedUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('street', instance.street?.toJson());
  writeNotNull('district', instance.district?.toJson());
  writeNotNull('number', instance.number?.toJson());
  writeNotNull('city', instance.city?.toJson());
  writeNotNull('customer_order_id', instance.customerOrderId?.toJson());
  return val;
}

AddressCreateManyInput _$AddressCreateManyInputFromJson(
        Map<String, dynamic> json) =>
    AddressCreateManyInput(
      street: json['street'] as String,
      district: json['district'] as String,
      number: json['number'] as int,
      city: json['city'] as String,
      customerOrderId: json['customer_order_id'] as int,
    );

Map<String, dynamic> _$AddressCreateManyInputToJson(
        AddressCreateManyInput instance) =>
    <String, dynamic>{
      'street': instance.street,
      'district': instance.district,
      'number': instance.number,
      'city': instance.city,
      'customer_order_id': instance.customerOrderId,
    };

AddressUpdateManyMutationInput _$AddressUpdateManyMutationInputFromJson(
        Map<String, dynamic> json) =>
    AddressUpdateManyMutationInput(
      street: json['street'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['street'] as Map<String, dynamic>),
      district: json['district'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['district'] as Map<String, dynamic>),
      number: json['number'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['number'] as Map<String, dynamic>),
      city: json['city'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['city'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddressUpdateManyMutationInputToJson(
    AddressUpdateManyMutationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('street', instance.street?.toJson());
  writeNotNull('district', instance.district?.toJson());
  writeNotNull('number', instance.number?.toJson());
  writeNotNull('city', instance.city?.toJson());
  return val;
}

AddressUncheckedUpdateManyInput _$AddressUncheckedUpdateManyInputFromJson(
        Map<String, dynamic> json) =>
    AddressUncheckedUpdateManyInput(
      street: json['street'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['street'] as Map<String, dynamic>),
      district: json['district'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['district'] as Map<String, dynamic>),
      number: json['number'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['number'] as Map<String, dynamic>),
      city: json['city'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['city'] as Map<String, dynamic>),
      customerOrderId: json['customer_order_id'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['customer_order_id'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddressUncheckedUpdateManyInputToJson(
    AddressUncheckedUpdateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('street', instance.street?.toJson());
  writeNotNull('district', instance.district?.toJson());
  writeNotNull('number', instance.number?.toJson());
  writeNotNull('city', instance.city?.toJson());
  writeNotNull('customer_order_id', instance.customerOrderId?.toJson());
  return val;
}

OrderItemsCreateInput _$OrderItemsCreateInputFromJson(
        Map<String, dynamic> json) =>
    OrderItemsCreateInput(
      amount: json['amount'] as int,
      price: json['price'] as int,
      customerOrder:
          CustomerOrderCreateNestedOneWithoutOrderItemsInput.fromJson(
              json['customerOrder'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderItemsCreateInputToJson(
        OrderItemsCreateInput instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'price': instance.price,
      'customerOrder': instance.customerOrder.toJson(),
    };

OrderItemsUncheckedCreateInput _$OrderItemsUncheckedCreateInputFromJson(
        Map<String, dynamic> json) =>
    OrderItemsUncheckedCreateInput(
      customerOrderId: json['customer_order_id'] as int,
      amount: json['amount'] as int,
      price: json['price'] as int,
    );

Map<String, dynamic> _$OrderItemsUncheckedCreateInputToJson(
        OrderItemsUncheckedCreateInput instance) =>
    <String, dynamic>{
      'customer_order_id': instance.customerOrderId,
      'amount': instance.amount,
      'price': instance.price,
    };

OrderItemsUpdateInput _$OrderItemsUpdateInputFromJson(
        Map<String, dynamic> json) =>
    OrderItemsUpdateInput(
      amount: json['amount'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['amount'] as Map<String, dynamic>),
      price: json['price'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['price'] as Map<String, dynamic>),
      customerOrder: json['customerOrder'] == null
          ? null
          : CustomerOrderUpdateOneRequiredWithoutOrderItemsNestedInput.fromJson(
              json['customerOrder'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderItemsUpdateInputToJson(
    OrderItemsUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('amount', instance.amount?.toJson());
  writeNotNull('price', instance.price?.toJson());
  writeNotNull('customerOrder', instance.customerOrder?.toJson());
  return val;
}

OrderItemsUncheckedUpdateInput _$OrderItemsUncheckedUpdateInputFromJson(
        Map<String, dynamic> json) =>
    OrderItemsUncheckedUpdateInput(
      customerOrderId: json['customer_order_id'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['customer_order_id'] as Map<String, dynamic>),
      amount: json['amount'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['amount'] as Map<String, dynamic>),
      price: json['price'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['price'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderItemsUncheckedUpdateInputToJson(
    OrderItemsUncheckedUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('customer_order_id', instance.customerOrderId?.toJson());
  writeNotNull('amount', instance.amount?.toJson());
  writeNotNull('price', instance.price?.toJson());
  return val;
}

OrderItemsCreateManyInput _$OrderItemsCreateManyInputFromJson(
        Map<String, dynamic> json) =>
    OrderItemsCreateManyInput(
      customerOrderId: json['customer_order_id'] as int,
      amount: json['amount'] as int,
      price: json['price'] as int,
    );

Map<String, dynamic> _$OrderItemsCreateManyInputToJson(
        OrderItemsCreateManyInput instance) =>
    <String, dynamic>{
      'customer_order_id': instance.customerOrderId,
      'amount': instance.amount,
      'price': instance.price,
    };

OrderItemsUpdateManyMutationInput _$OrderItemsUpdateManyMutationInputFromJson(
        Map<String, dynamic> json) =>
    OrderItemsUpdateManyMutationInput(
      amount: json['amount'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['amount'] as Map<String, dynamic>),
      price: json['price'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['price'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderItemsUpdateManyMutationInputToJson(
    OrderItemsUpdateManyMutationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('amount', instance.amount?.toJson());
  writeNotNull('price', instance.price?.toJson());
  return val;
}

OrderItemsUncheckedUpdateManyInput _$OrderItemsUncheckedUpdateManyInputFromJson(
        Map<String, dynamic> json) =>
    OrderItemsUncheckedUpdateManyInput(
      customerOrderId: json['customer_order_id'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['customer_order_id'] as Map<String, dynamic>),
      amount: json['amount'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['amount'] as Map<String, dynamic>),
      price: json['price'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['price'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderItemsUncheckedUpdateManyInputToJson(
    OrderItemsUncheckedUpdateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('customer_order_id', instance.customerOrderId?.toJson());
  writeNotNull('amount', instance.amount?.toJson());
  writeNotNull('price', instance.price?.toJson());
  return val;
}

UuidFilter _$UuidFilterFromJson(Map<String, dynamic> json) => UuidFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      mode: $enumDecodeNullable(_$QueryModeEnumMap, json['mode']),
      not: json['not'] == null
          ? null
          : NestedUuidFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UuidFilterToJson(UuidFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('mode', _$QueryModeEnumMap[instance.mode]);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

const _$QueryModeEnumMap = {
  QueryMode.$default: 'default',
  QueryMode.insensitive: 'insensitive',
};

StringFilter _$StringFilterFromJson(Map<String, dynamic> json) => StringFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      mode: $enumDecodeNullable(_$QueryModeEnumMap, json['mode']),
      not: json['not'] == null
          ? null
          : NestedStringFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StringFilterToJson(StringFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('mode', _$QueryModeEnumMap[instance.mode]);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

UserCountOrderByAggregateInput _$UserCountOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    UserCountOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      username: $enumDecodeNullable(_$SortOrderEnumMap, json['username']),
      email: $enumDecodeNullable(_$SortOrderEnumMap, json['email']),
      password: $enumDecodeNullable(_$SortOrderEnumMap, json['password']),
    );

Map<String, dynamic> _$UserCountOrderByAggregateInputToJson(
    UserCountOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('username', _$SortOrderEnumMap[instance.username]);
  writeNotNull('email', _$SortOrderEnumMap[instance.email]);
  writeNotNull('password', _$SortOrderEnumMap[instance.password]);
  return val;
}

UserMaxOrderByAggregateInput _$UserMaxOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    UserMaxOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      username: $enumDecodeNullable(_$SortOrderEnumMap, json['username']),
      email: $enumDecodeNullable(_$SortOrderEnumMap, json['email']),
      password: $enumDecodeNullable(_$SortOrderEnumMap, json['password']),
    );

Map<String, dynamic> _$UserMaxOrderByAggregateInputToJson(
    UserMaxOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('username', _$SortOrderEnumMap[instance.username]);
  writeNotNull('email', _$SortOrderEnumMap[instance.email]);
  writeNotNull('password', _$SortOrderEnumMap[instance.password]);
  return val;
}

UserMinOrderByAggregateInput _$UserMinOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    UserMinOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      username: $enumDecodeNullable(_$SortOrderEnumMap, json['username']),
      email: $enumDecodeNullable(_$SortOrderEnumMap, json['email']),
      password: $enumDecodeNullable(_$SortOrderEnumMap, json['password']),
    );

Map<String, dynamic> _$UserMinOrderByAggregateInputToJson(
    UserMinOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('username', _$SortOrderEnumMap[instance.username]);
  writeNotNull('email', _$SortOrderEnumMap[instance.email]);
  writeNotNull('password', _$SortOrderEnumMap[instance.password]);
  return val;
}

UuidWithAggregatesFilter _$UuidWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    UuidWithAggregatesFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      mode: $enumDecodeNullable(_$QueryModeEnumMap, json['mode']),
      not: json['not'] == null
          ? null
          : NestedUuidWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedStringFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedStringFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UuidWithAggregatesFilterToJson(
    UuidWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('mode', _$QueryModeEnumMap[instance.mode]);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

StringWithAggregatesFilter _$StringWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    StringWithAggregatesFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      mode: $enumDecodeNullable(_$QueryModeEnumMap, json['mode']),
      not: json['not'] == null
          ? null
          : NestedStringWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedStringFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedStringFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StringWithAggregatesFilterToJson(
    StringWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('mode', _$QueryModeEnumMap[instance.mode]);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

IntFilter _$IntFilterFromJson(Map<String, dynamic> json) => IntFilter(
      equals: json['equals'] as int?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as int),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as int),
      lt: json['lt'] as int?,
      lte: json['lte'] as int?,
      gt: json['gt'] as int?,
      gte: json['gte'] as int?,
      not: json['not'] == null
          ? null
          : NestedIntFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IntFilterToJson(IntFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

ProductCommentListRelationFilter _$ProductCommentListRelationFilterFromJson(
        Map<String, dynamic> json) =>
    ProductCommentListRelationFilter(
      every: json['every'] == null
          ? null
          : ProductCommentWhereInput.fromJson(
              json['every'] as Map<String, dynamic>),
      some: json['some'] == null
          ? null
          : ProductCommentWhereInput.fromJson(
              json['some'] as Map<String, dynamic>),
      none: json['none'] == null
          ? null
          : ProductCommentWhereInput.fromJson(
              json['none'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductCommentListRelationFilterToJson(
    ProductCommentListRelationFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('every', instance.every?.toJson());
  writeNotNull('some', instance.some?.toJson());
  writeNotNull('none', instance.none?.toJson());
  return val;
}

ProductCommentOrderByRelationAggregateInput
    _$ProductCommentOrderByRelationAggregateInputFromJson(
            Map<String, dynamic> json) =>
        ProductCommentOrderByRelationAggregateInput(
          $count: $enumDecodeNullable(_$SortOrderEnumMap, json['_count']),
        );

Map<String, dynamic> _$ProductCommentOrderByRelationAggregateInputToJson(
    ProductCommentOrderByRelationAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('_count', _$SortOrderEnumMap[instance.$count]);
  return val;
}

ProductCountOrderByAggregateInput _$ProductCountOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    ProductCountOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      name: $enumDecodeNullable(_$SortOrderEnumMap, json['name']),
      description: $enumDecodeNullable(_$SortOrderEnumMap, json['description']),
      imgUrl: $enumDecodeNullable(_$SortOrderEnumMap, json['img_url']),
      price: $enumDecodeNullable(_$SortOrderEnumMap, json['price']),
    );

Map<String, dynamic> _$ProductCountOrderByAggregateInputToJson(
    ProductCountOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('name', _$SortOrderEnumMap[instance.name]);
  writeNotNull('description', _$SortOrderEnumMap[instance.description]);
  writeNotNull('img_url', _$SortOrderEnumMap[instance.imgUrl]);
  writeNotNull('price', _$SortOrderEnumMap[instance.price]);
  return val;
}

ProductAvgOrderByAggregateInput _$ProductAvgOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    ProductAvgOrderByAggregateInput(
      price: $enumDecodeNullable(_$SortOrderEnumMap, json['price']),
    );

Map<String, dynamic> _$ProductAvgOrderByAggregateInputToJson(
    ProductAvgOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('price', _$SortOrderEnumMap[instance.price]);
  return val;
}

ProductMaxOrderByAggregateInput _$ProductMaxOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    ProductMaxOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      name: $enumDecodeNullable(_$SortOrderEnumMap, json['name']),
      description: $enumDecodeNullable(_$SortOrderEnumMap, json['description']),
      imgUrl: $enumDecodeNullable(_$SortOrderEnumMap, json['img_url']),
      price: $enumDecodeNullable(_$SortOrderEnumMap, json['price']),
    );

Map<String, dynamic> _$ProductMaxOrderByAggregateInputToJson(
    ProductMaxOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('name', _$SortOrderEnumMap[instance.name]);
  writeNotNull('description', _$SortOrderEnumMap[instance.description]);
  writeNotNull('img_url', _$SortOrderEnumMap[instance.imgUrl]);
  writeNotNull('price', _$SortOrderEnumMap[instance.price]);
  return val;
}

ProductMinOrderByAggregateInput _$ProductMinOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    ProductMinOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      name: $enumDecodeNullable(_$SortOrderEnumMap, json['name']),
      description: $enumDecodeNullable(_$SortOrderEnumMap, json['description']),
      imgUrl: $enumDecodeNullable(_$SortOrderEnumMap, json['img_url']),
      price: $enumDecodeNullable(_$SortOrderEnumMap, json['price']),
    );

Map<String, dynamic> _$ProductMinOrderByAggregateInputToJson(
    ProductMinOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('name', _$SortOrderEnumMap[instance.name]);
  writeNotNull('description', _$SortOrderEnumMap[instance.description]);
  writeNotNull('img_url', _$SortOrderEnumMap[instance.imgUrl]);
  writeNotNull('price', _$SortOrderEnumMap[instance.price]);
  return val;
}

ProductSumOrderByAggregateInput _$ProductSumOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    ProductSumOrderByAggregateInput(
      price: $enumDecodeNullable(_$SortOrderEnumMap, json['price']),
    );

Map<String, dynamic> _$ProductSumOrderByAggregateInputToJson(
    ProductSumOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('price', _$SortOrderEnumMap[instance.price]);
  return val;
}

IntWithAggregatesFilter _$IntWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    IntWithAggregatesFilter(
      equals: json['equals'] as int?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as int),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as int),
      lt: json['lt'] as int?,
      lte: json['lte'] as int?,
      gt: json['gt'] as int?,
      gte: json['gte'] as int?,
      not: json['not'] == null
          ? null
          : NestedIntWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : NestedFloatFilter.fromJson(json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : NestedIntFilter.fromJson(json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedIntFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedIntFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IntWithAggregatesFilterToJson(
    IntWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

FloatFilter _$FloatFilterFromJson(Map<String, dynamic> json) => FloatFilter(
      equals: (json['equals'] as num?)?.toDouble(),
      $in: (json['in'] as List<dynamic>?)?.map((e) => (e as num).toDouble()),
      notIn:
          (json['notIn'] as List<dynamic>?)?.map((e) => (e as num).toDouble()),
      lt: (json['lt'] as num?)?.toDouble(),
      lte: (json['lte'] as num?)?.toDouble(),
      gt: (json['gt'] as num?)?.toDouble(),
      gte: (json['gte'] as num?)?.toDouble(),
      not: json['not'] == null
          ? null
          : NestedFloatFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FloatFilterToJson(FloatFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

DateTimeFilter _$DateTimeFilterFromJson(Map<String, dynamic> json) =>
    DateTimeFilter(
      equals: _$JsonConverterFromJson<String, DateTime>(
          json['equals'], const DateTimeJsonConverter().fromJson),
      $in: (json['in'] as List<dynamic>?)
          ?.map((e) => const DateTimeJsonConverter().fromJson(e as String)),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => const DateTimeJsonConverter().fromJson(e as String)),
      lt: _$JsonConverterFromJson<String, DateTime>(
          json['lt'], const DateTimeJsonConverter().fromJson),
      lte: _$JsonConverterFromJson<String, DateTime>(
          json['lte'], const DateTimeJsonConverter().fromJson),
      gt: _$JsonConverterFromJson<String, DateTime>(
          json['gt'], const DateTimeJsonConverter().fromJson),
      gte: _$JsonConverterFromJson<String, DateTime>(
          json['gte'], const DateTimeJsonConverter().fromJson),
      not: json['not'] == null
          ? null
          : NestedDateTimeFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DateTimeFilterToJson(DateTimeFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'equals',
      _$JsonConverterToJson<String, DateTime>(
          instance.equals, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'in', instance.$in?.map(const DateTimeJsonConverter().toJson).toList());
  writeNotNull('notIn',
      instance.notIn?.map(const DateTimeJsonConverter().toJson).toList());
  writeNotNull(
      'lt',
      _$JsonConverterToJson<String, DateTime>(
          instance.lt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'lte',
      _$JsonConverterToJson<String, DateTime>(
          instance.lte, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'gt',
      _$JsonConverterToJson<String, DateTime>(
          instance.gt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'gte',
      _$JsonConverterToJson<String, DateTime>(
          instance.gte, const DateTimeJsonConverter().toJson));
  writeNotNull('not', instance.not?.toJson());
  return val;
}

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);

ProductRelationFilter _$ProductRelationFilterFromJson(
        Map<String, dynamic> json) =>
    ProductRelationFilter(
      $is: json['is'] == null
          ? null
          : ProductWhereInput.fromJson(json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : ProductWhereInput.fromJson(json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductRelationFilterToJson(
    ProductRelationFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('is', instance.$is?.toJson());
  writeNotNull('isNot', instance.isNot?.toJson());
  return val;
}

ProductCommentCountOrderByAggregateInput
    _$ProductCommentCountOrderByAggregateInputFromJson(
            Map<String, dynamic> json) =>
        ProductCommentCountOrderByAggregateInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          productId: $enumDecodeNullable(_$SortOrderEnumMap, json['productId']),
          username: $enumDecodeNullable(_$SortOrderEnumMap, json['username']),
          ratings: $enumDecodeNullable(_$SortOrderEnumMap, json['ratings']),
          email: $enumDecodeNullable(_$SortOrderEnumMap, json['email']),
          comment: $enumDecodeNullable(_$SortOrderEnumMap, json['comment']),
          created: $enumDecodeNullable(_$SortOrderEnumMap, json['created']),
        );

Map<String, dynamic> _$ProductCommentCountOrderByAggregateInputToJson(
    ProductCommentCountOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('productId', _$SortOrderEnumMap[instance.productId]);
  writeNotNull('username', _$SortOrderEnumMap[instance.username]);
  writeNotNull('ratings', _$SortOrderEnumMap[instance.ratings]);
  writeNotNull('email', _$SortOrderEnumMap[instance.email]);
  writeNotNull('comment', _$SortOrderEnumMap[instance.comment]);
  writeNotNull('created', _$SortOrderEnumMap[instance.created]);
  return val;
}

ProductCommentAvgOrderByAggregateInput
    _$ProductCommentAvgOrderByAggregateInputFromJson(
            Map<String, dynamic> json) =>
        ProductCommentAvgOrderByAggregateInput(
          ratings: $enumDecodeNullable(_$SortOrderEnumMap, json['ratings']),
        );

Map<String, dynamic> _$ProductCommentAvgOrderByAggregateInputToJson(
    ProductCommentAvgOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('ratings', _$SortOrderEnumMap[instance.ratings]);
  return val;
}

ProductCommentMaxOrderByAggregateInput
    _$ProductCommentMaxOrderByAggregateInputFromJson(
            Map<String, dynamic> json) =>
        ProductCommentMaxOrderByAggregateInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          productId: $enumDecodeNullable(_$SortOrderEnumMap, json['productId']),
          username: $enumDecodeNullable(_$SortOrderEnumMap, json['username']),
          ratings: $enumDecodeNullable(_$SortOrderEnumMap, json['ratings']),
          email: $enumDecodeNullable(_$SortOrderEnumMap, json['email']),
          comment: $enumDecodeNullable(_$SortOrderEnumMap, json['comment']),
          created: $enumDecodeNullable(_$SortOrderEnumMap, json['created']),
        );

Map<String, dynamic> _$ProductCommentMaxOrderByAggregateInputToJson(
    ProductCommentMaxOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('productId', _$SortOrderEnumMap[instance.productId]);
  writeNotNull('username', _$SortOrderEnumMap[instance.username]);
  writeNotNull('ratings', _$SortOrderEnumMap[instance.ratings]);
  writeNotNull('email', _$SortOrderEnumMap[instance.email]);
  writeNotNull('comment', _$SortOrderEnumMap[instance.comment]);
  writeNotNull('created', _$SortOrderEnumMap[instance.created]);
  return val;
}

ProductCommentMinOrderByAggregateInput
    _$ProductCommentMinOrderByAggregateInputFromJson(
            Map<String, dynamic> json) =>
        ProductCommentMinOrderByAggregateInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          productId: $enumDecodeNullable(_$SortOrderEnumMap, json['productId']),
          username: $enumDecodeNullable(_$SortOrderEnumMap, json['username']),
          ratings: $enumDecodeNullable(_$SortOrderEnumMap, json['ratings']),
          email: $enumDecodeNullable(_$SortOrderEnumMap, json['email']),
          comment: $enumDecodeNullable(_$SortOrderEnumMap, json['comment']),
          created: $enumDecodeNullable(_$SortOrderEnumMap, json['created']),
        );

Map<String, dynamic> _$ProductCommentMinOrderByAggregateInputToJson(
    ProductCommentMinOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('productId', _$SortOrderEnumMap[instance.productId]);
  writeNotNull('username', _$SortOrderEnumMap[instance.username]);
  writeNotNull('ratings', _$SortOrderEnumMap[instance.ratings]);
  writeNotNull('email', _$SortOrderEnumMap[instance.email]);
  writeNotNull('comment', _$SortOrderEnumMap[instance.comment]);
  writeNotNull('created', _$SortOrderEnumMap[instance.created]);
  return val;
}

ProductCommentSumOrderByAggregateInput
    _$ProductCommentSumOrderByAggregateInputFromJson(
            Map<String, dynamic> json) =>
        ProductCommentSumOrderByAggregateInput(
          ratings: $enumDecodeNullable(_$SortOrderEnumMap, json['ratings']),
        );

Map<String, dynamic> _$ProductCommentSumOrderByAggregateInputToJson(
    ProductCommentSumOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('ratings', _$SortOrderEnumMap[instance.ratings]);
  return val;
}

FloatWithAggregatesFilter _$FloatWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    FloatWithAggregatesFilter(
      equals: (json['equals'] as num?)?.toDouble(),
      $in: (json['in'] as List<dynamic>?)?.map((e) => (e as num).toDouble()),
      notIn:
          (json['notIn'] as List<dynamic>?)?.map((e) => (e as num).toDouble()),
      lt: (json['lt'] as num?)?.toDouble(),
      lte: (json['lte'] as num?)?.toDouble(),
      gt: (json['gt'] as num?)?.toDouble(),
      gte: (json['gte'] as num?)?.toDouble(),
      not: json['not'] == null
          ? null
          : NestedFloatWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : NestedFloatFilter.fromJson(json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : NestedFloatFilter.fromJson(json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedFloatFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedFloatFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FloatWithAggregatesFilterToJson(
    FloatWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

DateTimeWithAggregatesFilter _$DateTimeWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    DateTimeWithAggregatesFilter(
      equals: _$JsonConverterFromJson<String, DateTime>(
          json['equals'], const DateTimeJsonConverter().fromJson),
      $in: (json['in'] as List<dynamic>?)
          ?.map((e) => const DateTimeJsonConverter().fromJson(e as String)),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => const DateTimeJsonConverter().fromJson(e as String)),
      lt: _$JsonConverterFromJson<String, DateTime>(
          json['lt'], const DateTimeJsonConverter().fromJson),
      lte: _$JsonConverterFromJson<String, DateTime>(
          json['lte'], const DateTimeJsonConverter().fromJson),
      gt: _$JsonConverterFromJson<String, DateTime>(
          json['gt'], const DateTimeJsonConverter().fromJson),
      gte: _$JsonConverterFromJson<String, DateTime>(
          json['gte'], const DateTimeJsonConverter().fromJson),
      not: json['not'] == null
          ? null
          : NestedDateTimeWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedDateTimeFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedDateTimeFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DateTimeWithAggregatesFilterToJson(
    DateTimeWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'equals',
      _$JsonConverterToJson<String, DateTime>(
          instance.equals, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'in', instance.$in?.map(const DateTimeJsonConverter().toJson).toList());
  writeNotNull('notIn',
      instance.notIn?.map(const DateTimeJsonConverter().toJson).toList());
  writeNotNull(
      'lt',
      _$JsonConverterToJson<String, DateTime>(
          instance.lt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'lte',
      _$JsonConverterToJson<String, DateTime>(
          instance.lte, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'gt',
      _$JsonConverterToJson<String, DateTime>(
          instance.gt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'gte',
      _$JsonConverterToJson<String, DateTime>(
          instance.gte, const DateTimeJsonConverter().toJson));
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

AddressListRelationFilter _$AddressListRelationFilterFromJson(
        Map<String, dynamic> json) =>
    AddressListRelationFilter(
      every: json['every'] == null
          ? null
          : AddressWhereInput.fromJson(json['every'] as Map<String, dynamic>),
      some: json['some'] == null
          ? null
          : AddressWhereInput.fromJson(json['some'] as Map<String, dynamic>),
      none: json['none'] == null
          ? null
          : AddressWhereInput.fromJson(json['none'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddressListRelationFilterToJson(
    AddressListRelationFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('every', instance.every?.toJson());
  writeNotNull('some', instance.some?.toJson());
  writeNotNull('none', instance.none?.toJson());
  return val;
}

OrderItemsListRelationFilter _$OrderItemsListRelationFilterFromJson(
        Map<String, dynamic> json) =>
    OrderItemsListRelationFilter(
      every: json['every'] == null
          ? null
          : OrderItemsWhereInput.fromJson(
              json['every'] as Map<String, dynamic>),
      some: json['some'] == null
          ? null
          : OrderItemsWhereInput.fromJson(json['some'] as Map<String, dynamic>),
      none: json['none'] == null
          ? null
          : OrderItemsWhereInput.fromJson(json['none'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderItemsListRelationFilterToJson(
    OrderItemsListRelationFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('every', instance.every?.toJson());
  writeNotNull('some', instance.some?.toJson());
  writeNotNull('none', instance.none?.toJson());
  return val;
}

AddressOrderByRelationAggregateInput
    _$AddressOrderByRelationAggregateInputFromJson(Map<String, dynamic> json) =>
        AddressOrderByRelationAggregateInput(
          $count: $enumDecodeNullable(_$SortOrderEnumMap, json['_count']),
        );

Map<String, dynamic> _$AddressOrderByRelationAggregateInputToJson(
    AddressOrderByRelationAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('_count', _$SortOrderEnumMap[instance.$count]);
  return val;
}

OrderItemsOrderByRelationAggregateInput
    _$OrderItemsOrderByRelationAggregateInputFromJson(
            Map<String, dynamic> json) =>
        OrderItemsOrderByRelationAggregateInput(
          $count: $enumDecodeNullable(_$SortOrderEnumMap, json['_count']),
        );

Map<String, dynamic> _$OrderItemsOrderByRelationAggregateInputToJson(
    OrderItemsOrderByRelationAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('_count', _$SortOrderEnumMap[instance.$count]);
  return val;
}

CustomerOrderCountOrderByAggregateInput
    _$CustomerOrderCountOrderByAggregateInputFromJson(
            Map<String, dynamic> json) =>
        CustomerOrderCountOrderByAggregateInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          customerName:
              $enumDecodeNullable(_$SortOrderEnumMap, json['customer_name']),
          status: $enumDecodeNullable(_$SortOrderEnumMap, json['status']),
          totalPrice:
              $enumDecodeNullable(_$SortOrderEnumMap, json['totalPrice']),
          created: $enumDecodeNullable(_$SortOrderEnumMap, json['created']),
        );

Map<String, dynamic> _$CustomerOrderCountOrderByAggregateInputToJson(
    CustomerOrderCountOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('customer_name', _$SortOrderEnumMap[instance.customerName]);
  writeNotNull('status', _$SortOrderEnumMap[instance.status]);
  writeNotNull('totalPrice', _$SortOrderEnumMap[instance.totalPrice]);
  writeNotNull('created', _$SortOrderEnumMap[instance.created]);
  return val;
}

CustomerOrderAvgOrderByAggregateInput
    _$CustomerOrderAvgOrderByAggregateInputFromJson(
            Map<String, dynamic> json) =>
        CustomerOrderAvgOrderByAggregateInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          totalPrice:
              $enumDecodeNullable(_$SortOrderEnumMap, json['totalPrice']),
        );

Map<String, dynamic> _$CustomerOrderAvgOrderByAggregateInputToJson(
    CustomerOrderAvgOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('totalPrice', _$SortOrderEnumMap[instance.totalPrice]);
  return val;
}

CustomerOrderMaxOrderByAggregateInput
    _$CustomerOrderMaxOrderByAggregateInputFromJson(
            Map<String, dynamic> json) =>
        CustomerOrderMaxOrderByAggregateInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          customerName:
              $enumDecodeNullable(_$SortOrderEnumMap, json['customer_name']),
          status: $enumDecodeNullable(_$SortOrderEnumMap, json['status']),
          totalPrice:
              $enumDecodeNullable(_$SortOrderEnumMap, json['totalPrice']),
          created: $enumDecodeNullable(_$SortOrderEnumMap, json['created']),
        );

Map<String, dynamic> _$CustomerOrderMaxOrderByAggregateInputToJson(
    CustomerOrderMaxOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('customer_name', _$SortOrderEnumMap[instance.customerName]);
  writeNotNull('status', _$SortOrderEnumMap[instance.status]);
  writeNotNull('totalPrice', _$SortOrderEnumMap[instance.totalPrice]);
  writeNotNull('created', _$SortOrderEnumMap[instance.created]);
  return val;
}

CustomerOrderMinOrderByAggregateInput
    _$CustomerOrderMinOrderByAggregateInputFromJson(
            Map<String, dynamic> json) =>
        CustomerOrderMinOrderByAggregateInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          customerName:
              $enumDecodeNullable(_$SortOrderEnumMap, json['customer_name']),
          status: $enumDecodeNullable(_$SortOrderEnumMap, json['status']),
          totalPrice:
              $enumDecodeNullable(_$SortOrderEnumMap, json['totalPrice']),
          created: $enumDecodeNullable(_$SortOrderEnumMap, json['created']),
        );

Map<String, dynamic> _$CustomerOrderMinOrderByAggregateInputToJson(
    CustomerOrderMinOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('customer_name', _$SortOrderEnumMap[instance.customerName]);
  writeNotNull('status', _$SortOrderEnumMap[instance.status]);
  writeNotNull('totalPrice', _$SortOrderEnumMap[instance.totalPrice]);
  writeNotNull('created', _$SortOrderEnumMap[instance.created]);
  return val;
}

CustomerOrderSumOrderByAggregateInput
    _$CustomerOrderSumOrderByAggregateInputFromJson(
            Map<String, dynamic> json) =>
        CustomerOrderSumOrderByAggregateInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          totalPrice:
              $enumDecodeNullable(_$SortOrderEnumMap, json['totalPrice']),
        );

Map<String, dynamic> _$CustomerOrderSumOrderByAggregateInputToJson(
    CustomerOrderSumOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('totalPrice', _$SortOrderEnumMap[instance.totalPrice]);
  return val;
}

CustomerOrderRelationFilter _$CustomerOrderRelationFilterFromJson(
        Map<String, dynamic> json) =>
    CustomerOrderRelationFilter(
      $is: json['is'] == null
          ? null
          : CustomerOrderWhereInput.fromJson(
              json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : CustomerOrderWhereInput.fromJson(
              json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CustomerOrderRelationFilterToJson(
    CustomerOrderRelationFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('is', instance.$is?.toJson());
  writeNotNull('isNot', instance.isNot?.toJson());
  return val;
}

AddressCountOrderByAggregateInput _$AddressCountOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    AddressCountOrderByAggregateInput(
      street: $enumDecodeNullable(_$SortOrderEnumMap, json['street']),
      district: $enumDecodeNullable(_$SortOrderEnumMap, json['district']),
      number: $enumDecodeNullable(_$SortOrderEnumMap, json['number']),
      city: $enumDecodeNullable(_$SortOrderEnumMap, json['city']),
      customerOrderId:
          $enumDecodeNullable(_$SortOrderEnumMap, json['customer_order_id']),
    );

Map<String, dynamic> _$AddressCountOrderByAggregateInputToJson(
    AddressCountOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('street', _$SortOrderEnumMap[instance.street]);
  writeNotNull('district', _$SortOrderEnumMap[instance.district]);
  writeNotNull('number', _$SortOrderEnumMap[instance.number]);
  writeNotNull('city', _$SortOrderEnumMap[instance.city]);
  writeNotNull(
      'customer_order_id', _$SortOrderEnumMap[instance.customerOrderId]);
  return val;
}

AddressAvgOrderByAggregateInput _$AddressAvgOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    AddressAvgOrderByAggregateInput(
      number: $enumDecodeNullable(_$SortOrderEnumMap, json['number']),
      customerOrderId:
          $enumDecodeNullable(_$SortOrderEnumMap, json['customer_order_id']),
    );

Map<String, dynamic> _$AddressAvgOrderByAggregateInputToJson(
    AddressAvgOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('number', _$SortOrderEnumMap[instance.number]);
  writeNotNull(
      'customer_order_id', _$SortOrderEnumMap[instance.customerOrderId]);
  return val;
}

AddressMaxOrderByAggregateInput _$AddressMaxOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    AddressMaxOrderByAggregateInput(
      street: $enumDecodeNullable(_$SortOrderEnumMap, json['street']),
      district: $enumDecodeNullable(_$SortOrderEnumMap, json['district']),
      number: $enumDecodeNullable(_$SortOrderEnumMap, json['number']),
      city: $enumDecodeNullable(_$SortOrderEnumMap, json['city']),
      customerOrderId:
          $enumDecodeNullable(_$SortOrderEnumMap, json['customer_order_id']),
    );

Map<String, dynamic> _$AddressMaxOrderByAggregateInputToJson(
    AddressMaxOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('street', _$SortOrderEnumMap[instance.street]);
  writeNotNull('district', _$SortOrderEnumMap[instance.district]);
  writeNotNull('number', _$SortOrderEnumMap[instance.number]);
  writeNotNull('city', _$SortOrderEnumMap[instance.city]);
  writeNotNull(
      'customer_order_id', _$SortOrderEnumMap[instance.customerOrderId]);
  return val;
}

AddressMinOrderByAggregateInput _$AddressMinOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    AddressMinOrderByAggregateInput(
      street: $enumDecodeNullable(_$SortOrderEnumMap, json['street']),
      district: $enumDecodeNullable(_$SortOrderEnumMap, json['district']),
      number: $enumDecodeNullable(_$SortOrderEnumMap, json['number']),
      city: $enumDecodeNullable(_$SortOrderEnumMap, json['city']),
      customerOrderId:
          $enumDecodeNullable(_$SortOrderEnumMap, json['customer_order_id']),
    );

Map<String, dynamic> _$AddressMinOrderByAggregateInputToJson(
    AddressMinOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('street', _$SortOrderEnumMap[instance.street]);
  writeNotNull('district', _$SortOrderEnumMap[instance.district]);
  writeNotNull('number', _$SortOrderEnumMap[instance.number]);
  writeNotNull('city', _$SortOrderEnumMap[instance.city]);
  writeNotNull(
      'customer_order_id', _$SortOrderEnumMap[instance.customerOrderId]);
  return val;
}

AddressSumOrderByAggregateInput _$AddressSumOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    AddressSumOrderByAggregateInput(
      number: $enumDecodeNullable(_$SortOrderEnumMap, json['number']),
      customerOrderId:
          $enumDecodeNullable(_$SortOrderEnumMap, json['customer_order_id']),
    );

Map<String, dynamic> _$AddressSumOrderByAggregateInputToJson(
    AddressSumOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('number', _$SortOrderEnumMap[instance.number]);
  writeNotNull(
      'customer_order_id', _$SortOrderEnumMap[instance.customerOrderId]);
  return val;
}

OrderItemsCountOrderByAggregateInput
    _$OrderItemsCountOrderByAggregateInputFromJson(Map<String, dynamic> json) =>
        OrderItemsCountOrderByAggregateInput(
          customerOrderId: $enumDecodeNullable(
              _$SortOrderEnumMap, json['customer_order_id']),
          amount: $enumDecodeNullable(_$SortOrderEnumMap, json['amount']),
          price: $enumDecodeNullable(_$SortOrderEnumMap, json['price']),
        );

Map<String, dynamic> _$OrderItemsCountOrderByAggregateInputToJson(
    OrderItemsCountOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'customer_order_id', _$SortOrderEnumMap[instance.customerOrderId]);
  writeNotNull('amount', _$SortOrderEnumMap[instance.amount]);
  writeNotNull('price', _$SortOrderEnumMap[instance.price]);
  return val;
}

OrderItemsAvgOrderByAggregateInput _$OrderItemsAvgOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    OrderItemsAvgOrderByAggregateInput(
      customerOrderId:
          $enumDecodeNullable(_$SortOrderEnumMap, json['customer_order_id']),
      amount: $enumDecodeNullable(_$SortOrderEnumMap, json['amount']),
      price: $enumDecodeNullable(_$SortOrderEnumMap, json['price']),
    );

Map<String, dynamic> _$OrderItemsAvgOrderByAggregateInputToJson(
    OrderItemsAvgOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'customer_order_id', _$SortOrderEnumMap[instance.customerOrderId]);
  writeNotNull('amount', _$SortOrderEnumMap[instance.amount]);
  writeNotNull('price', _$SortOrderEnumMap[instance.price]);
  return val;
}

OrderItemsMaxOrderByAggregateInput _$OrderItemsMaxOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    OrderItemsMaxOrderByAggregateInput(
      customerOrderId:
          $enumDecodeNullable(_$SortOrderEnumMap, json['customer_order_id']),
      amount: $enumDecodeNullable(_$SortOrderEnumMap, json['amount']),
      price: $enumDecodeNullable(_$SortOrderEnumMap, json['price']),
    );

Map<String, dynamic> _$OrderItemsMaxOrderByAggregateInputToJson(
    OrderItemsMaxOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'customer_order_id', _$SortOrderEnumMap[instance.customerOrderId]);
  writeNotNull('amount', _$SortOrderEnumMap[instance.amount]);
  writeNotNull('price', _$SortOrderEnumMap[instance.price]);
  return val;
}

OrderItemsMinOrderByAggregateInput _$OrderItemsMinOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    OrderItemsMinOrderByAggregateInput(
      customerOrderId:
          $enumDecodeNullable(_$SortOrderEnumMap, json['customer_order_id']),
      amount: $enumDecodeNullable(_$SortOrderEnumMap, json['amount']),
      price: $enumDecodeNullable(_$SortOrderEnumMap, json['price']),
    );

Map<String, dynamic> _$OrderItemsMinOrderByAggregateInputToJson(
    OrderItemsMinOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'customer_order_id', _$SortOrderEnumMap[instance.customerOrderId]);
  writeNotNull('amount', _$SortOrderEnumMap[instance.amount]);
  writeNotNull('price', _$SortOrderEnumMap[instance.price]);
  return val;
}

OrderItemsSumOrderByAggregateInput _$OrderItemsSumOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    OrderItemsSumOrderByAggregateInput(
      customerOrderId:
          $enumDecodeNullable(_$SortOrderEnumMap, json['customer_order_id']),
      amount: $enumDecodeNullable(_$SortOrderEnumMap, json['amount']),
      price: $enumDecodeNullable(_$SortOrderEnumMap, json['price']),
    );

Map<String, dynamic> _$OrderItemsSumOrderByAggregateInputToJson(
    OrderItemsSumOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'customer_order_id', _$SortOrderEnumMap[instance.customerOrderId]);
  writeNotNull('amount', _$SortOrderEnumMap[instance.amount]);
  writeNotNull('price', _$SortOrderEnumMap[instance.price]);
  return val;
}

StringFieldUpdateOperationsInput _$StringFieldUpdateOperationsInputFromJson(
        Map<String, dynamic> json) =>
    StringFieldUpdateOperationsInput(
      set: json['set'] as String?,
    );

Map<String, dynamic> _$StringFieldUpdateOperationsInputToJson(
    StringFieldUpdateOperationsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('set', instance.set);
  return val;
}

ProductCommentCreateNestedManyWithoutProductInput
    _$ProductCommentCreateNestedManyWithoutProductInputFromJson(
            Map<String, dynamic> json) =>
        ProductCommentCreateNestedManyWithoutProductInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              ProductCommentCreateWithoutProductInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => ProductCommentCreateOrConnectWithoutProductInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : ProductCommentCreateManyProductInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              ProductCommentWhereUniqueInput.fromJson(
                  e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$ProductCommentCreateNestedManyWithoutProductInputToJson(
    ProductCommentCreateNestedManyWithoutProductInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  return val;
}

ProductCommentUncheckedCreateNestedManyWithoutProductInput
    _$ProductCommentUncheckedCreateNestedManyWithoutProductInputFromJson(
            Map<String, dynamic> json) =>
        ProductCommentUncheckedCreateNestedManyWithoutProductInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              ProductCommentCreateWithoutProductInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => ProductCommentCreateOrConnectWithoutProductInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : ProductCommentCreateManyProductInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              ProductCommentWhereUniqueInput.fromJson(
                  e as Map<String, dynamic>)),
        );

Map<String, dynamic>
    _$ProductCommentUncheckedCreateNestedManyWithoutProductInputToJson(
        ProductCommentUncheckedCreateNestedManyWithoutProductInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  return val;
}

IntFieldUpdateOperationsInput _$IntFieldUpdateOperationsInputFromJson(
        Map<String, dynamic> json) =>
    IntFieldUpdateOperationsInput(
      set: json['set'] as int?,
      increment: json['increment'] as int?,
      decrement: json['decrement'] as int?,
      multiply: json['multiply'] as int?,
      divide: json['divide'] as int?,
    );

Map<String, dynamic> _$IntFieldUpdateOperationsInputToJson(
    IntFieldUpdateOperationsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('set', instance.set);
  writeNotNull('increment', instance.increment);
  writeNotNull('decrement', instance.decrement);
  writeNotNull('multiply', instance.multiply);
  writeNotNull('divide', instance.divide);
  return val;
}

ProductCommentUpdateManyWithoutProductNestedInput
    _$ProductCommentUpdateManyWithoutProductNestedInputFromJson(
            Map<String, dynamic> json) =>
        ProductCommentUpdateManyWithoutProductNestedInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              ProductCommentCreateWithoutProductInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => ProductCommentCreateOrConnectWithoutProductInput.fromJson(
                  e as Map<String, dynamic>)),
          upsert: (json['upsert'] as List<dynamic>?)?.map((e) =>
              ProductCommentUpsertWithWhereUniqueWithoutProductInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : ProductCommentCreateManyProductInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          set: (json['set'] as List<dynamic>?)?.map((e) =>
              ProductCommentWhereUniqueInput.fromJson(
                  e as Map<String, dynamic>)),
          disconnect: (json['disconnect'] as List<dynamic>?)?.map((e) =>
              ProductCommentWhereUniqueInput.fromJson(
                  e as Map<String, dynamic>)),
          delete: (json['delete'] as List<dynamic>?)?.map((e) =>
              ProductCommentWhereUniqueInput.fromJson(
                  e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              ProductCommentWhereUniqueInput.fromJson(
                  e as Map<String, dynamic>)),
          update: (json['update'] as List<dynamic>?)?.map((e) =>
              ProductCommentUpdateWithWhereUniqueWithoutProductInput.fromJson(
                  e as Map<String, dynamic>)),
          updateMany: (json['updateMany'] as List<dynamic>?)?.map((e) =>
              ProductCommentUpdateManyWithWhereWithoutProductInput.fromJson(
                  e as Map<String, dynamic>)),
          deleteMany: (json['deleteMany'] as List<dynamic>?)?.map((e) =>
              ProductCommentScalarWhereInput.fromJson(
                  e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$ProductCommentUpdateManyWithoutProductNestedInputToJson(
    ProductCommentUpdateManyWithoutProductNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('upsert', instance.upsert?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('set', instance.set?.map((e) => e.toJson()).toList());
  writeNotNull(
      'disconnect', instance.disconnect?.map((e) => e.toJson()).toList());
  writeNotNull('delete', instance.delete?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  writeNotNull('update', instance.update?.map((e) => e.toJson()).toList());
  writeNotNull(
      'updateMany', instance.updateMany?.map((e) => e.toJson()).toList());
  writeNotNull(
      'deleteMany', instance.deleteMany?.map((e) => e.toJson()).toList());
  return val;
}

ProductCommentUncheckedUpdateManyWithoutProductNestedInput
    _$ProductCommentUncheckedUpdateManyWithoutProductNestedInputFromJson(
            Map<String, dynamic> json) =>
        ProductCommentUncheckedUpdateManyWithoutProductNestedInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              ProductCommentCreateWithoutProductInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => ProductCommentCreateOrConnectWithoutProductInput.fromJson(
                  e as Map<String, dynamic>)),
          upsert: (json['upsert'] as List<dynamic>?)?.map((e) =>
              ProductCommentUpsertWithWhereUniqueWithoutProductInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : ProductCommentCreateManyProductInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          set: (json['set'] as List<dynamic>?)?.map((e) =>
              ProductCommentWhereUniqueInput.fromJson(
                  e as Map<String, dynamic>)),
          disconnect: (json['disconnect'] as List<dynamic>?)?.map((e) =>
              ProductCommentWhereUniqueInput.fromJson(
                  e as Map<String, dynamic>)),
          delete: (json['delete'] as List<dynamic>?)?.map((e) =>
              ProductCommentWhereUniqueInput.fromJson(
                  e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              ProductCommentWhereUniqueInput.fromJson(
                  e as Map<String, dynamic>)),
          update: (json['update'] as List<dynamic>?)?.map((e) =>
              ProductCommentUpdateWithWhereUniqueWithoutProductInput.fromJson(
                  e as Map<String, dynamic>)),
          updateMany: (json['updateMany'] as List<dynamic>?)?.map((e) =>
              ProductCommentUpdateManyWithWhereWithoutProductInput.fromJson(
                  e as Map<String, dynamic>)),
          deleteMany: (json['deleteMany'] as List<dynamic>?)?.map((e) =>
              ProductCommentScalarWhereInput.fromJson(
                  e as Map<String, dynamic>)),
        );

Map<String, dynamic>
    _$ProductCommentUncheckedUpdateManyWithoutProductNestedInputToJson(
        ProductCommentUncheckedUpdateManyWithoutProductNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('upsert', instance.upsert?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('set', instance.set?.map((e) => e.toJson()).toList());
  writeNotNull(
      'disconnect', instance.disconnect?.map((e) => e.toJson()).toList());
  writeNotNull('delete', instance.delete?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  writeNotNull('update', instance.update?.map((e) => e.toJson()).toList());
  writeNotNull(
      'updateMany', instance.updateMany?.map((e) => e.toJson()).toList());
  writeNotNull(
      'deleteMany', instance.deleteMany?.map((e) => e.toJson()).toList());
  return val;
}

ProductCreateNestedOneWithoutProductCommentsInput
    _$ProductCreateNestedOneWithoutProductCommentsInputFromJson(
            Map<String, dynamic> json) =>
        ProductCreateNestedOneWithoutProductCommentsInput(
          create: json['create'] == null
              ? null
              : ProductCreateWithoutProductCommentsInput.fromJson(
                  json['create'] as Map<String, dynamic>),
          connectOrCreate: json['connectOrCreate'] == null
              ? null
              : ProductCreateOrConnectWithoutProductCommentsInput.fromJson(
                  json['connectOrCreate'] as Map<String, dynamic>),
          connect: json['connect'] == null
              ? null
              : ProductWhereUniqueInput.fromJson(
                  json['connect'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$ProductCreateNestedOneWithoutProductCommentsInputToJson(
    ProductCreateNestedOneWithoutProductCommentsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.toJson());
  writeNotNull('connectOrCreate', instance.connectOrCreate?.toJson());
  writeNotNull('connect', instance.connect?.toJson());
  return val;
}

FloatFieldUpdateOperationsInput _$FloatFieldUpdateOperationsInputFromJson(
        Map<String, dynamic> json) =>
    FloatFieldUpdateOperationsInput(
      set: (json['set'] as num?)?.toDouble(),
      increment: (json['increment'] as num?)?.toDouble(),
      decrement: (json['decrement'] as num?)?.toDouble(),
      multiply: (json['multiply'] as num?)?.toDouble(),
      divide: (json['divide'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$FloatFieldUpdateOperationsInputToJson(
    FloatFieldUpdateOperationsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('set', instance.set);
  writeNotNull('increment', instance.increment);
  writeNotNull('decrement', instance.decrement);
  writeNotNull('multiply', instance.multiply);
  writeNotNull('divide', instance.divide);
  return val;
}

DateTimeFieldUpdateOperationsInput _$DateTimeFieldUpdateOperationsInputFromJson(
        Map<String, dynamic> json) =>
    DateTimeFieldUpdateOperationsInput(
      set: _$JsonConverterFromJson<String, DateTime>(
          json['set'], const DateTimeJsonConverter().fromJson),
    );

Map<String, dynamic> _$DateTimeFieldUpdateOperationsInputToJson(
    DateTimeFieldUpdateOperationsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'set',
      _$JsonConverterToJson<String, DateTime>(
          instance.set, const DateTimeJsonConverter().toJson));
  return val;
}

ProductUpdateOneRequiredWithoutProductCommentsNestedInput
    _$ProductUpdateOneRequiredWithoutProductCommentsNestedInputFromJson(
            Map<String, dynamic> json) =>
        ProductUpdateOneRequiredWithoutProductCommentsNestedInput(
          create: json['create'] == null
              ? null
              : ProductCreateWithoutProductCommentsInput.fromJson(
                  json['create'] as Map<String, dynamic>),
          connectOrCreate: json['connectOrCreate'] == null
              ? null
              : ProductCreateOrConnectWithoutProductCommentsInput.fromJson(
                  json['connectOrCreate'] as Map<String, dynamic>),
          upsert: json['upsert'] == null
              ? null
              : ProductUpsertWithoutProductCommentsInput.fromJson(
                  json['upsert'] as Map<String, dynamic>),
          connect: json['connect'] == null
              ? null
              : ProductWhereUniqueInput.fromJson(
                  json['connect'] as Map<String, dynamic>),
          update: json['update'] == null
              ? null
              : ProductUpdateToOneWithWhereWithoutProductCommentsInput.fromJson(
                  json['update'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$ProductUpdateOneRequiredWithoutProductCommentsNestedInputToJson(
        ProductUpdateOneRequiredWithoutProductCommentsNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.toJson());
  writeNotNull('connectOrCreate', instance.connectOrCreate?.toJson());
  writeNotNull('upsert', instance.upsert?.toJson());
  writeNotNull('connect', instance.connect?.toJson());
  writeNotNull('update', instance.update?.toJson());
  return val;
}

AddressCreateNestedManyWithoutCustomerOrderInput
    _$AddressCreateNestedManyWithoutCustomerOrderInputFromJson(
            Map<String, dynamic> json) =>
        AddressCreateNestedManyWithoutCustomerOrderInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              AddressCreateWithoutCustomerOrderInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => AddressCreateOrConnectWithoutCustomerOrderInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : AddressCreateManyCustomerOrderInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              AddressWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$AddressCreateNestedManyWithoutCustomerOrderInputToJson(
    AddressCreateNestedManyWithoutCustomerOrderInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  return val;
}

OrderItemsCreateNestedManyWithoutCustomerOrderInput
    _$OrderItemsCreateNestedManyWithoutCustomerOrderInputFromJson(
            Map<String, dynamic> json) =>
        OrderItemsCreateNestedManyWithoutCustomerOrderInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              OrderItemsCreateWithoutCustomerOrderInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) =>
                  OrderItemsCreateOrConnectWithoutCustomerOrderInput.fromJson(
                      e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : OrderItemsCreateManyCustomerOrderInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              OrderItemsWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic>
    _$OrderItemsCreateNestedManyWithoutCustomerOrderInputToJson(
        OrderItemsCreateNestedManyWithoutCustomerOrderInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  return val;
}

AddressUncheckedCreateNestedManyWithoutCustomerOrderInput
    _$AddressUncheckedCreateNestedManyWithoutCustomerOrderInputFromJson(
            Map<String, dynamic> json) =>
        AddressUncheckedCreateNestedManyWithoutCustomerOrderInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              AddressCreateWithoutCustomerOrderInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => AddressCreateOrConnectWithoutCustomerOrderInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : AddressCreateManyCustomerOrderInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              AddressWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic>
    _$AddressUncheckedCreateNestedManyWithoutCustomerOrderInputToJson(
        AddressUncheckedCreateNestedManyWithoutCustomerOrderInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  return val;
}

OrderItemsUncheckedCreateNestedManyWithoutCustomerOrderInput
    _$OrderItemsUncheckedCreateNestedManyWithoutCustomerOrderInputFromJson(
            Map<String, dynamic> json) =>
        OrderItemsUncheckedCreateNestedManyWithoutCustomerOrderInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              OrderItemsCreateWithoutCustomerOrderInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) =>
                  OrderItemsCreateOrConnectWithoutCustomerOrderInput.fromJson(
                      e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : OrderItemsCreateManyCustomerOrderInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              OrderItemsWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic>
    _$OrderItemsUncheckedCreateNestedManyWithoutCustomerOrderInputToJson(
        OrderItemsUncheckedCreateNestedManyWithoutCustomerOrderInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  return val;
}

AddressUpdateManyWithoutCustomerOrderNestedInput
    _$AddressUpdateManyWithoutCustomerOrderNestedInputFromJson(
            Map<String, dynamic> json) =>
        AddressUpdateManyWithoutCustomerOrderNestedInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              AddressCreateWithoutCustomerOrderInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => AddressCreateOrConnectWithoutCustomerOrderInput.fromJson(
                  e as Map<String, dynamic>)),
          upsert: (json['upsert'] as List<dynamic>?)?.map((e) =>
              AddressUpsertWithWhereUniqueWithoutCustomerOrderInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : AddressCreateManyCustomerOrderInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          set: (json['set'] as List<dynamic>?)?.map((e) =>
              AddressWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          disconnect: (json['disconnect'] as List<dynamic>?)?.map((e) =>
              AddressWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          delete: (json['delete'] as List<dynamic>?)?.map((e) =>
              AddressWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              AddressWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          update: (json['update'] as List<dynamic>?)?.map((e) =>
              AddressUpdateWithWhereUniqueWithoutCustomerOrderInput.fromJson(
                  e as Map<String, dynamic>)),
          updateMany: (json['updateMany'] as List<dynamic>?)?.map((e) =>
              AddressUpdateManyWithWhereWithoutCustomerOrderInput.fromJson(
                  e as Map<String, dynamic>)),
          deleteMany: (json['deleteMany'] as List<dynamic>?)?.map((e) =>
              AddressScalarWhereInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$AddressUpdateManyWithoutCustomerOrderNestedInputToJson(
    AddressUpdateManyWithoutCustomerOrderNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('upsert', instance.upsert?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('set', instance.set?.map((e) => e.toJson()).toList());
  writeNotNull(
      'disconnect', instance.disconnect?.map((e) => e.toJson()).toList());
  writeNotNull('delete', instance.delete?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  writeNotNull('update', instance.update?.map((e) => e.toJson()).toList());
  writeNotNull(
      'updateMany', instance.updateMany?.map((e) => e.toJson()).toList());
  writeNotNull(
      'deleteMany', instance.deleteMany?.map((e) => e.toJson()).toList());
  return val;
}

OrderItemsUpdateManyWithoutCustomerOrderNestedInput
    _$OrderItemsUpdateManyWithoutCustomerOrderNestedInputFromJson(
            Map<String, dynamic> json) =>
        OrderItemsUpdateManyWithoutCustomerOrderNestedInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              OrderItemsCreateWithoutCustomerOrderInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) =>
                  OrderItemsCreateOrConnectWithoutCustomerOrderInput.fromJson(
                      e as Map<String, dynamic>)),
          upsert: (json['upsert'] as List<dynamic>?)?.map((e) =>
              OrderItemsUpsertWithWhereUniqueWithoutCustomerOrderInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : OrderItemsCreateManyCustomerOrderInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          set: (json['set'] as List<dynamic>?)?.map((e) =>
              OrderItemsWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          disconnect: (json['disconnect'] as List<dynamic>?)?.map((e) =>
              OrderItemsWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          delete: (json['delete'] as List<dynamic>?)?.map((e) =>
              OrderItemsWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              OrderItemsWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          update: (json['update'] as List<dynamic>?)?.map((e) =>
              OrderItemsUpdateWithWhereUniqueWithoutCustomerOrderInput.fromJson(
                  e as Map<String, dynamic>)),
          updateMany: (json['updateMany'] as List<dynamic>?)?.map((e) =>
              OrderItemsUpdateManyWithWhereWithoutCustomerOrderInput.fromJson(
                  e as Map<String, dynamic>)),
          deleteMany: (json['deleteMany'] as List<dynamic>?)?.map((e) =>
              OrderItemsScalarWhereInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic>
    _$OrderItemsUpdateManyWithoutCustomerOrderNestedInputToJson(
        OrderItemsUpdateManyWithoutCustomerOrderNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('upsert', instance.upsert?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('set', instance.set?.map((e) => e.toJson()).toList());
  writeNotNull(
      'disconnect', instance.disconnect?.map((e) => e.toJson()).toList());
  writeNotNull('delete', instance.delete?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  writeNotNull('update', instance.update?.map((e) => e.toJson()).toList());
  writeNotNull(
      'updateMany', instance.updateMany?.map((e) => e.toJson()).toList());
  writeNotNull(
      'deleteMany', instance.deleteMany?.map((e) => e.toJson()).toList());
  return val;
}

AddressUncheckedUpdateManyWithoutCustomerOrderNestedInput
    _$AddressUncheckedUpdateManyWithoutCustomerOrderNestedInputFromJson(
            Map<String, dynamic> json) =>
        AddressUncheckedUpdateManyWithoutCustomerOrderNestedInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              AddressCreateWithoutCustomerOrderInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => AddressCreateOrConnectWithoutCustomerOrderInput.fromJson(
                  e as Map<String, dynamic>)),
          upsert: (json['upsert'] as List<dynamic>?)?.map((e) =>
              AddressUpsertWithWhereUniqueWithoutCustomerOrderInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : AddressCreateManyCustomerOrderInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          set: (json['set'] as List<dynamic>?)?.map((e) =>
              AddressWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          disconnect: (json['disconnect'] as List<dynamic>?)?.map((e) =>
              AddressWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          delete: (json['delete'] as List<dynamic>?)?.map((e) =>
              AddressWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              AddressWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          update: (json['update'] as List<dynamic>?)?.map((e) =>
              AddressUpdateWithWhereUniqueWithoutCustomerOrderInput.fromJson(
                  e as Map<String, dynamic>)),
          updateMany: (json['updateMany'] as List<dynamic>?)?.map((e) =>
              AddressUpdateManyWithWhereWithoutCustomerOrderInput.fromJson(
                  e as Map<String, dynamic>)),
          deleteMany: (json['deleteMany'] as List<dynamic>?)?.map((e) =>
              AddressScalarWhereInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic>
    _$AddressUncheckedUpdateManyWithoutCustomerOrderNestedInputToJson(
        AddressUncheckedUpdateManyWithoutCustomerOrderNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('upsert', instance.upsert?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('set', instance.set?.map((e) => e.toJson()).toList());
  writeNotNull(
      'disconnect', instance.disconnect?.map((e) => e.toJson()).toList());
  writeNotNull('delete', instance.delete?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  writeNotNull('update', instance.update?.map((e) => e.toJson()).toList());
  writeNotNull(
      'updateMany', instance.updateMany?.map((e) => e.toJson()).toList());
  writeNotNull(
      'deleteMany', instance.deleteMany?.map((e) => e.toJson()).toList());
  return val;
}

OrderItemsUncheckedUpdateManyWithoutCustomerOrderNestedInput
    _$OrderItemsUncheckedUpdateManyWithoutCustomerOrderNestedInputFromJson(
            Map<String, dynamic> json) =>
        OrderItemsUncheckedUpdateManyWithoutCustomerOrderNestedInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              OrderItemsCreateWithoutCustomerOrderInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) =>
                  OrderItemsCreateOrConnectWithoutCustomerOrderInput.fromJson(
                      e as Map<String, dynamic>)),
          upsert: (json['upsert'] as List<dynamic>?)?.map((e) =>
              OrderItemsUpsertWithWhereUniqueWithoutCustomerOrderInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : OrderItemsCreateManyCustomerOrderInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          set: (json['set'] as List<dynamic>?)?.map((e) =>
              OrderItemsWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          disconnect: (json['disconnect'] as List<dynamic>?)?.map((e) =>
              OrderItemsWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          delete: (json['delete'] as List<dynamic>?)?.map((e) =>
              OrderItemsWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              OrderItemsWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          update: (json['update'] as List<dynamic>?)?.map((e) =>
              OrderItemsUpdateWithWhereUniqueWithoutCustomerOrderInput.fromJson(
                  e as Map<String, dynamic>)),
          updateMany: (json['updateMany'] as List<dynamic>?)?.map((e) =>
              OrderItemsUpdateManyWithWhereWithoutCustomerOrderInput.fromJson(
                  e as Map<String, dynamic>)),
          deleteMany: (json['deleteMany'] as List<dynamic>?)?.map((e) =>
              OrderItemsScalarWhereInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic>
    _$OrderItemsUncheckedUpdateManyWithoutCustomerOrderNestedInputToJson(
        OrderItemsUncheckedUpdateManyWithoutCustomerOrderNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('upsert', instance.upsert?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('set', instance.set?.map((e) => e.toJson()).toList());
  writeNotNull(
      'disconnect', instance.disconnect?.map((e) => e.toJson()).toList());
  writeNotNull('delete', instance.delete?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  writeNotNull('update', instance.update?.map((e) => e.toJson()).toList());
  writeNotNull(
      'updateMany', instance.updateMany?.map((e) => e.toJson()).toList());
  writeNotNull(
      'deleteMany', instance.deleteMany?.map((e) => e.toJson()).toList());
  return val;
}

CustomerOrderCreateNestedOneWithoutAddressInput
    _$CustomerOrderCreateNestedOneWithoutAddressInputFromJson(
            Map<String, dynamic> json) =>
        CustomerOrderCreateNestedOneWithoutAddressInput(
          create: json['create'] == null
              ? null
              : CustomerOrderCreateWithoutAddressInput.fromJson(
                  json['create'] as Map<String, dynamic>),
          connectOrCreate: json['connectOrCreate'] == null
              ? null
              : CustomerOrderCreateOrConnectWithoutAddressInput.fromJson(
                  json['connectOrCreate'] as Map<String, dynamic>),
          connect: json['connect'] == null
              ? null
              : CustomerOrderWhereUniqueInput.fromJson(
                  json['connect'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CustomerOrderCreateNestedOneWithoutAddressInputToJson(
    CustomerOrderCreateNestedOneWithoutAddressInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.toJson());
  writeNotNull('connectOrCreate', instance.connectOrCreate?.toJson());
  writeNotNull('connect', instance.connect?.toJson());
  return val;
}

CustomerOrderUpdateOneRequiredWithoutAddressNestedInput
    _$CustomerOrderUpdateOneRequiredWithoutAddressNestedInputFromJson(
            Map<String, dynamic> json) =>
        CustomerOrderUpdateOneRequiredWithoutAddressNestedInput(
          create: json['create'] == null
              ? null
              : CustomerOrderCreateWithoutAddressInput.fromJson(
                  json['create'] as Map<String, dynamic>),
          connectOrCreate: json['connectOrCreate'] == null
              ? null
              : CustomerOrderCreateOrConnectWithoutAddressInput.fromJson(
                  json['connectOrCreate'] as Map<String, dynamic>),
          upsert: json['upsert'] == null
              ? null
              : CustomerOrderUpsertWithoutAddressInput.fromJson(
                  json['upsert'] as Map<String, dynamic>),
          connect: json['connect'] == null
              ? null
              : CustomerOrderWhereUniqueInput.fromJson(
                  json['connect'] as Map<String, dynamic>),
          update: json['update'] == null
              ? null
              : CustomerOrderUpdateToOneWithWhereWithoutAddressInput.fromJson(
                  json['update'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$CustomerOrderUpdateOneRequiredWithoutAddressNestedInputToJson(
        CustomerOrderUpdateOneRequiredWithoutAddressNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.toJson());
  writeNotNull('connectOrCreate', instance.connectOrCreate?.toJson());
  writeNotNull('upsert', instance.upsert?.toJson());
  writeNotNull('connect', instance.connect?.toJson());
  writeNotNull('update', instance.update?.toJson());
  return val;
}

CustomerOrderCreateNestedOneWithoutOrderItemsInput
    _$CustomerOrderCreateNestedOneWithoutOrderItemsInputFromJson(
            Map<String, dynamic> json) =>
        CustomerOrderCreateNestedOneWithoutOrderItemsInput(
          create: json['create'] == null
              ? null
              : CustomerOrderCreateWithoutOrderItemsInput.fromJson(
                  json['create'] as Map<String, dynamic>),
          connectOrCreate: json['connectOrCreate'] == null
              ? null
              : CustomerOrderCreateOrConnectWithoutOrderItemsInput.fromJson(
                  json['connectOrCreate'] as Map<String, dynamic>),
          connect: json['connect'] == null
              ? null
              : CustomerOrderWhereUniqueInput.fromJson(
                  json['connect'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CustomerOrderCreateNestedOneWithoutOrderItemsInputToJson(
    CustomerOrderCreateNestedOneWithoutOrderItemsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.toJson());
  writeNotNull('connectOrCreate', instance.connectOrCreate?.toJson());
  writeNotNull('connect', instance.connect?.toJson());
  return val;
}

CustomerOrderUpdateOneRequiredWithoutOrderItemsNestedInput
    _$CustomerOrderUpdateOneRequiredWithoutOrderItemsNestedInputFromJson(
            Map<String, dynamic> json) =>
        CustomerOrderUpdateOneRequiredWithoutOrderItemsNestedInput(
          create: json['create'] == null
              ? null
              : CustomerOrderCreateWithoutOrderItemsInput.fromJson(
                  json['create'] as Map<String, dynamic>),
          connectOrCreate: json['connectOrCreate'] == null
              ? null
              : CustomerOrderCreateOrConnectWithoutOrderItemsInput.fromJson(
                  json['connectOrCreate'] as Map<String, dynamic>),
          upsert: json['upsert'] == null
              ? null
              : CustomerOrderUpsertWithoutOrderItemsInput.fromJson(
                  json['upsert'] as Map<String, dynamic>),
          connect: json['connect'] == null
              ? null
              : CustomerOrderWhereUniqueInput.fromJson(
                  json['connect'] as Map<String, dynamic>),
          update: json['update'] == null
              ? null
              : CustomerOrderUpdateToOneWithWhereWithoutOrderItemsInput
                  .fromJson(json['update'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$CustomerOrderUpdateOneRequiredWithoutOrderItemsNestedInputToJson(
        CustomerOrderUpdateOneRequiredWithoutOrderItemsNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.toJson());
  writeNotNull('connectOrCreate', instance.connectOrCreate?.toJson());
  writeNotNull('upsert', instance.upsert?.toJson());
  writeNotNull('connect', instance.connect?.toJson());
  writeNotNull('update', instance.update?.toJson());
  return val;
}

NestedUuidFilter _$NestedUuidFilterFromJson(Map<String, dynamic> json) =>
    NestedUuidFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      not: json['not'] == null
          ? null
          : NestedUuidFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedUuidFilterToJson(NestedUuidFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

NestedStringFilter _$NestedStringFilterFromJson(Map<String, dynamic> json) =>
    NestedStringFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      not: json['not'] == null
          ? null
          : NestedStringFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedStringFilterToJson(NestedStringFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

NestedUuidWithAggregatesFilter _$NestedUuidWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    NestedUuidWithAggregatesFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      not: json['not'] == null
          ? null
          : NestedUuidWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedStringFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedStringFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedUuidWithAggregatesFilterToJson(
    NestedUuidWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

NestedIntFilter _$NestedIntFilterFromJson(Map<String, dynamic> json) =>
    NestedIntFilter(
      equals: json['equals'] as int?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as int),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as int),
      lt: json['lt'] as int?,
      lte: json['lte'] as int?,
      gt: json['gt'] as int?,
      gte: json['gte'] as int?,
      not: json['not'] == null
          ? null
          : NestedIntFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedIntFilterToJson(NestedIntFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

NestedStringWithAggregatesFilter _$NestedStringWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    NestedStringWithAggregatesFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      not: json['not'] == null
          ? null
          : NestedStringWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedStringFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedStringFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedStringWithAggregatesFilterToJson(
    NestedStringWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

NestedIntWithAggregatesFilter _$NestedIntWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    NestedIntWithAggregatesFilter(
      equals: json['equals'] as int?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as int),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as int),
      lt: json['lt'] as int?,
      lte: json['lte'] as int?,
      gt: json['gt'] as int?,
      gte: json['gte'] as int?,
      not: json['not'] == null
          ? null
          : NestedIntWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : NestedFloatFilter.fromJson(json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : NestedIntFilter.fromJson(json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedIntFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedIntFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedIntWithAggregatesFilterToJson(
    NestedIntWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

NestedFloatFilter _$NestedFloatFilterFromJson(Map<String, dynamic> json) =>
    NestedFloatFilter(
      equals: (json['equals'] as num?)?.toDouble(),
      $in: (json['in'] as List<dynamic>?)?.map((e) => (e as num).toDouble()),
      notIn:
          (json['notIn'] as List<dynamic>?)?.map((e) => (e as num).toDouble()),
      lt: (json['lt'] as num?)?.toDouble(),
      lte: (json['lte'] as num?)?.toDouble(),
      gt: (json['gt'] as num?)?.toDouble(),
      gte: (json['gte'] as num?)?.toDouble(),
      not: json['not'] == null
          ? null
          : NestedFloatFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedFloatFilterToJson(NestedFloatFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

NestedDateTimeFilter _$NestedDateTimeFilterFromJson(
        Map<String, dynamic> json) =>
    NestedDateTimeFilter(
      equals: _$JsonConverterFromJson<String, DateTime>(
          json['equals'], const DateTimeJsonConverter().fromJson),
      $in: (json['in'] as List<dynamic>?)
          ?.map((e) => const DateTimeJsonConverter().fromJson(e as String)),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => const DateTimeJsonConverter().fromJson(e as String)),
      lt: _$JsonConverterFromJson<String, DateTime>(
          json['lt'], const DateTimeJsonConverter().fromJson),
      lte: _$JsonConverterFromJson<String, DateTime>(
          json['lte'], const DateTimeJsonConverter().fromJson),
      gt: _$JsonConverterFromJson<String, DateTime>(
          json['gt'], const DateTimeJsonConverter().fromJson),
      gte: _$JsonConverterFromJson<String, DateTime>(
          json['gte'], const DateTimeJsonConverter().fromJson),
      not: json['not'] == null
          ? null
          : NestedDateTimeFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedDateTimeFilterToJson(
    NestedDateTimeFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'equals',
      _$JsonConverterToJson<String, DateTime>(
          instance.equals, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'in', instance.$in?.map(const DateTimeJsonConverter().toJson).toList());
  writeNotNull('notIn',
      instance.notIn?.map(const DateTimeJsonConverter().toJson).toList());
  writeNotNull(
      'lt',
      _$JsonConverterToJson<String, DateTime>(
          instance.lt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'lte',
      _$JsonConverterToJson<String, DateTime>(
          instance.lte, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'gt',
      _$JsonConverterToJson<String, DateTime>(
          instance.gt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'gte',
      _$JsonConverterToJson<String, DateTime>(
          instance.gte, const DateTimeJsonConverter().toJson));
  writeNotNull('not', instance.not?.toJson());
  return val;
}

NestedFloatWithAggregatesFilter _$NestedFloatWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    NestedFloatWithAggregatesFilter(
      equals: (json['equals'] as num?)?.toDouble(),
      $in: (json['in'] as List<dynamic>?)?.map((e) => (e as num).toDouble()),
      notIn:
          (json['notIn'] as List<dynamic>?)?.map((e) => (e as num).toDouble()),
      lt: (json['lt'] as num?)?.toDouble(),
      lte: (json['lte'] as num?)?.toDouble(),
      gt: (json['gt'] as num?)?.toDouble(),
      gte: (json['gte'] as num?)?.toDouble(),
      not: json['not'] == null
          ? null
          : NestedFloatWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : NestedFloatFilter.fromJson(json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : NestedFloatFilter.fromJson(json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedFloatFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedFloatFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedFloatWithAggregatesFilterToJson(
    NestedFloatWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

NestedDateTimeWithAggregatesFilter _$NestedDateTimeWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    NestedDateTimeWithAggregatesFilter(
      equals: _$JsonConverterFromJson<String, DateTime>(
          json['equals'], const DateTimeJsonConverter().fromJson),
      $in: (json['in'] as List<dynamic>?)
          ?.map((e) => const DateTimeJsonConverter().fromJson(e as String)),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => const DateTimeJsonConverter().fromJson(e as String)),
      lt: _$JsonConverterFromJson<String, DateTime>(
          json['lt'], const DateTimeJsonConverter().fromJson),
      lte: _$JsonConverterFromJson<String, DateTime>(
          json['lte'], const DateTimeJsonConverter().fromJson),
      gt: _$JsonConverterFromJson<String, DateTime>(
          json['gt'], const DateTimeJsonConverter().fromJson),
      gte: _$JsonConverterFromJson<String, DateTime>(
          json['gte'], const DateTimeJsonConverter().fromJson),
      not: json['not'] == null
          ? null
          : NestedDateTimeWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedDateTimeFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedDateTimeFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedDateTimeWithAggregatesFilterToJson(
    NestedDateTimeWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'equals',
      _$JsonConverterToJson<String, DateTime>(
          instance.equals, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'in', instance.$in?.map(const DateTimeJsonConverter().toJson).toList());
  writeNotNull('notIn',
      instance.notIn?.map(const DateTimeJsonConverter().toJson).toList());
  writeNotNull(
      'lt',
      _$JsonConverterToJson<String, DateTime>(
          instance.lt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'lte',
      _$JsonConverterToJson<String, DateTime>(
          instance.lte, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'gt',
      _$JsonConverterToJson<String, DateTime>(
          instance.gt, const DateTimeJsonConverter().toJson));
  writeNotNull(
      'gte',
      _$JsonConverterToJson<String, DateTime>(
          instance.gte, const DateTimeJsonConverter().toJson));
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

ProductCommentCreateWithoutProductInput
    _$ProductCommentCreateWithoutProductInputFromJson(
            Map<String, dynamic> json) =>
        ProductCommentCreateWithoutProductInput(
          id: json['id'] as String?,
          username: json['username'] as String,
          ratings: (json['ratings'] as num).toDouble(),
          email: json['email'] as String,
          comment: json['comment'] as String,
          created:
              const DateTimeJsonConverter().fromJson(json['created'] as String),
        );

Map<String, dynamic> _$ProductCommentCreateWithoutProductInputToJson(
    ProductCommentCreateWithoutProductInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['username'] = instance.username;
  val['ratings'] = instance.ratings;
  val['email'] = instance.email;
  val['comment'] = instance.comment;
  val['created'] = const DateTimeJsonConverter().toJson(instance.created);
  return val;
}

ProductCommentUncheckedCreateWithoutProductInput
    _$ProductCommentUncheckedCreateWithoutProductInputFromJson(
            Map<String, dynamic> json) =>
        ProductCommentUncheckedCreateWithoutProductInput(
          id: json['id'] as String?,
          username: json['username'] as String,
          ratings: (json['ratings'] as num).toDouble(),
          email: json['email'] as String,
          comment: json['comment'] as String,
          created:
              const DateTimeJsonConverter().fromJson(json['created'] as String),
        );

Map<String, dynamic> _$ProductCommentUncheckedCreateWithoutProductInputToJson(
    ProductCommentUncheckedCreateWithoutProductInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['username'] = instance.username;
  val['ratings'] = instance.ratings;
  val['email'] = instance.email;
  val['comment'] = instance.comment;
  val['created'] = const DateTimeJsonConverter().toJson(instance.created);
  return val;
}

ProductCommentCreateOrConnectWithoutProductInput
    _$ProductCommentCreateOrConnectWithoutProductInputFromJson(
            Map<String, dynamic> json) =>
        ProductCommentCreateOrConnectWithoutProductInput(
          where: ProductCommentWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          create: ProductCommentCreateWithoutProductInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$ProductCommentCreateOrConnectWithoutProductInputToJson(
        ProductCommentCreateOrConnectWithoutProductInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'create': instance.create.toJson(),
    };

ProductCommentCreateManyProductInputEnvelope
    _$ProductCommentCreateManyProductInputEnvelopeFromJson(
            Map<String, dynamic> json) =>
        ProductCommentCreateManyProductInputEnvelope(
          data: (json['data'] as List<dynamic>).map((e) =>
              ProductCommentCreateManyProductInput.fromJson(
                  e as Map<String, dynamic>)),
          skipDuplicates: json['skipDuplicates'] as bool?,
        );

Map<String, dynamic> _$ProductCommentCreateManyProductInputEnvelopeToJson(
    ProductCommentCreateManyProductInputEnvelope instance) {
  final val = <String, dynamic>{
    'data': instance.data.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('skipDuplicates', instance.skipDuplicates);
  return val;
}

ProductCommentUpsertWithWhereUniqueWithoutProductInput
    _$ProductCommentUpsertWithWhereUniqueWithoutProductInputFromJson(
            Map<String, dynamic> json) =>
        ProductCommentUpsertWithWhereUniqueWithoutProductInput(
          where: ProductCommentWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          update: ProductCommentUpdateWithoutProductInput.fromJson(
              json['update'] as Map<String, dynamic>),
          create: ProductCommentCreateWithoutProductInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$ProductCommentUpsertWithWhereUniqueWithoutProductInputToJson(
            ProductCommentUpsertWithWhereUniqueWithoutProductInput instance) =>
        <String, dynamic>{
          'where': instance.where.toJson(),
          'update': instance.update.toJson(),
          'create': instance.create.toJson(),
        };

ProductCommentUpdateWithWhereUniqueWithoutProductInput
    _$ProductCommentUpdateWithWhereUniqueWithoutProductInputFromJson(
            Map<String, dynamic> json) =>
        ProductCommentUpdateWithWhereUniqueWithoutProductInput(
          where: ProductCommentWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          data: ProductCommentUpdateWithoutProductInput.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$ProductCommentUpdateWithWhereUniqueWithoutProductInputToJson(
            ProductCommentUpdateWithWhereUniqueWithoutProductInput instance) =>
        <String, dynamic>{
          'where': instance.where.toJson(),
          'data': instance.data.toJson(),
        };

ProductCommentUpdateManyWithWhereWithoutProductInput
    _$ProductCommentUpdateManyWithWhereWithoutProductInputFromJson(
            Map<String, dynamic> json) =>
        ProductCommentUpdateManyWithWhereWithoutProductInput(
          where: ProductCommentScalarWhereInput.fromJson(
              json['where'] as Map<String, dynamic>),
          data: ProductCommentUpdateManyMutationInput.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$ProductCommentUpdateManyWithWhereWithoutProductInputToJson(
            ProductCommentUpdateManyWithWhereWithoutProductInput instance) =>
        <String, dynamic>{
          'where': instance.where.toJson(),
          'data': instance.data.toJson(),
        };

ProductCommentScalarWhereInput _$ProductCommentScalarWhereInputFromJson(
        Map<String, dynamic> json) =>
    ProductCommentScalarWhereInput(
      AND: (json['AND'] as List<dynamic>?)?.map((e) =>
          ProductCommentScalarWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)?.map((e) =>
          ProductCommentScalarWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)?.map((e) =>
          ProductCommentScalarWhereInput.fromJson(e as Map<String, dynamic>)),
      id: json['id'] == null
          ? null
          : UuidFilter.fromJson(json['id'] as Map<String, dynamic>),
      productId: json['productId'] == null
          ? null
          : UuidFilter.fromJson(json['productId'] as Map<String, dynamic>),
      username: json['username'] == null
          ? null
          : StringFilter.fromJson(json['username'] as Map<String, dynamic>),
      ratings: json['ratings'] == null
          ? null
          : FloatFilter.fromJson(json['ratings'] as Map<String, dynamic>),
      email: json['email'] == null
          ? null
          : StringFilter.fromJson(json['email'] as Map<String, dynamic>),
      comment: json['comment'] == null
          ? null
          : StringFilter.fromJson(json['comment'] as Map<String, dynamic>),
      created: json['created'] == null
          ? null
          : DateTimeFilter.fromJson(json['created'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductCommentScalarWhereInputToJson(
    ProductCommentScalarWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('productId', instance.productId?.toJson());
  writeNotNull('username', instance.username?.toJson());
  writeNotNull('ratings', instance.ratings?.toJson());
  writeNotNull('email', instance.email?.toJson());
  writeNotNull('comment', instance.comment?.toJson());
  writeNotNull('created', instance.created?.toJson());
  return val;
}

ProductCreateWithoutProductCommentsInput
    _$ProductCreateWithoutProductCommentsInputFromJson(
            Map<String, dynamic> json) =>
        ProductCreateWithoutProductCommentsInput(
          id: json['id'] as String?,
          name: json['name'] as String,
          description: json['description'] as String,
          imgUrl: json['img_url'] as String,
          price: json['price'] as int,
        );

Map<String, dynamic> _$ProductCreateWithoutProductCommentsInputToJson(
    ProductCreateWithoutProductCommentsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['name'] = instance.name;
  val['description'] = instance.description;
  val['img_url'] = instance.imgUrl;
  val['price'] = instance.price;
  return val;
}

ProductUncheckedCreateWithoutProductCommentsInput
    _$ProductUncheckedCreateWithoutProductCommentsInputFromJson(
            Map<String, dynamic> json) =>
        ProductUncheckedCreateWithoutProductCommentsInput(
          id: json['id'] as String?,
          name: json['name'] as String,
          description: json['description'] as String,
          imgUrl: json['img_url'] as String,
          price: json['price'] as int,
        );

Map<String, dynamic> _$ProductUncheckedCreateWithoutProductCommentsInputToJson(
    ProductUncheckedCreateWithoutProductCommentsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['name'] = instance.name;
  val['description'] = instance.description;
  val['img_url'] = instance.imgUrl;
  val['price'] = instance.price;
  return val;
}

ProductCreateOrConnectWithoutProductCommentsInput
    _$ProductCreateOrConnectWithoutProductCommentsInputFromJson(
            Map<String, dynamic> json) =>
        ProductCreateOrConnectWithoutProductCommentsInput(
          where: ProductWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          create: ProductCreateWithoutProductCommentsInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$ProductCreateOrConnectWithoutProductCommentsInputToJson(
        ProductCreateOrConnectWithoutProductCommentsInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'create': instance.create.toJson(),
    };

ProductUpsertWithoutProductCommentsInput
    _$ProductUpsertWithoutProductCommentsInputFromJson(
            Map<String, dynamic> json) =>
        ProductUpsertWithoutProductCommentsInput(
          update: ProductUpdateWithoutProductCommentsInput.fromJson(
              json['update'] as Map<String, dynamic>),
          create: ProductCreateWithoutProductCommentsInput.fromJson(
              json['create'] as Map<String, dynamic>),
          where: json['where'] == null
              ? null
              : ProductWhereInput.fromJson(
                  json['where'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$ProductUpsertWithoutProductCommentsInputToJson(
    ProductUpsertWithoutProductCommentsInput instance) {
  final val = <String, dynamic>{
    'update': instance.update.toJson(),
    'create': instance.create.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('where', instance.where?.toJson());
  return val;
}

ProductUpdateToOneWithWhereWithoutProductCommentsInput
    _$ProductUpdateToOneWithWhereWithoutProductCommentsInputFromJson(
            Map<String, dynamic> json) =>
        ProductUpdateToOneWithWhereWithoutProductCommentsInput(
          where: json['where'] == null
              ? null
              : ProductWhereInput.fromJson(
                  json['where'] as Map<String, dynamic>),
          data: ProductUpdateWithoutProductCommentsInput.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$ProductUpdateToOneWithWhereWithoutProductCommentsInputToJson(
        ProductUpdateToOneWithWhereWithoutProductCommentsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('where', instance.where?.toJson());
  val['data'] = instance.data.toJson();
  return val;
}

ProductUpdateWithoutProductCommentsInput
    _$ProductUpdateWithoutProductCommentsInputFromJson(
            Map<String, dynamic> json) =>
        ProductUpdateWithoutProductCommentsInput(
          id: json['id'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['id'] as Map<String, dynamic>),
          name: json['name'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['name'] as Map<String, dynamic>),
          description: json['description'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['description'] as Map<String, dynamic>),
          imgUrl: json['img_url'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['img_url'] as Map<String, dynamic>),
          price: json['price'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['price'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$ProductUpdateWithoutProductCommentsInputToJson(
    ProductUpdateWithoutProductCommentsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('description', instance.description?.toJson());
  writeNotNull('img_url', instance.imgUrl?.toJson());
  writeNotNull('price', instance.price?.toJson());
  return val;
}

ProductUncheckedUpdateWithoutProductCommentsInput
    _$ProductUncheckedUpdateWithoutProductCommentsInputFromJson(
            Map<String, dynamic> json) =>
        ProductUncheckedUpdateWithoutProductCommentsInput(
          id: json['id'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['id'] as Map<String, dynamic>),
          name: json['name'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['name'] as Map<String, dynamic>),
          description: json['description'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['description'] as Map<String, dynamic>),
          imgUrl: json['img_url'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['img_url'] as Map<String, dynamic>),
          price: json['price'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['price'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$ProductUncheckedUpdateWithoutProductCommentsInputToJson(
    ProductUncheckedUpdateWithoutProductCommentsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('description', instance.description?.toJson());
  writeNotNull('img_url', instance.imgUrl?.toJson());
  writeNotNull('price', instance.price?.toJson());
  return val;
}

AddressCreateWithoutCustomerOrderInput
    _$AddressCreateWithoutCustomerOrderInputFromJson(
            Map<String, dynamic> json) =>
        AddressCreateWithoutCustomerOrderInput(
          street: json['street'] as String,
          district: json['district'] as String,
          number: json['number'] as int,
          city: json['city'] as String,
        );

Map<String, dynamic> _$AddressCreateWithoutCustomerOrderInputToJson(
        AddressCreateWithoutCustomerOrderInput instance) =>
    <String, dynamic>{
      'street': instance.street,
      'district': instance.district,
      'number': instance.number,
      'city': instance.city,
    };

AddressUncheckedCreateWithoutCustomerOrderInput
    _$AddressUncheckedCreateWithoutCustomerOrderInputFromJson(
            Map<String, dynamic> json) =>
        AddressUncheckedCreateWithoutCustomerOrderInput(
          street: json['street'] as String,
          district: json['district'] as String,
          number: json['number'] as int,
          city: json['city'] as String,
        );

Map<String, dynamic> _$AddressUncheckedCreateWithoutCustomerOrderInputToJson(
        AddressUncheckedCreateWithoutCustomerOrderInput instance) =>
    <String, dynamic>{
      'street': instance.street,
      'district': instance.district,
      'number': instance.number,
      'city': instance.city,
    };

AddressCreateOrConnectWithoutCustomerOrderInput
    _$AddressCreateOrConnectWithoutCustomerOrderInputFromJson(
            Map<String, dynamic> json) =>
        AddressCreateOrConnectWithoutCustomerOrderInput(
          where: AddressWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          create: AddressCreateWithoutCustomerOrderInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$AddressCreateOrConnectWithoutCustomerOrderInputToJson(
        AddressCreateOrConnectWithoutCustomerOrderInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'create': instance.create.toJson(),
    };

AddressCreateManyCustomerOrderInputEnvelope
    _$AddressCreateManyCustomerOrderInputEnvelopeFromJson(
            Map<String, dynamic> json) =>
        AddressCreateManyCustomerOrderInputEnvelope(
          data: (json['data'] as List<dynamic>).map((e) =>
              AddressCreateManyCustomerOrderInput.fromJson(
                  e as Map<String, dynamic>)),
          skipDuplicates: json['skipDuplicates'] as bool?,
        );

Map<String, dynamic> _$AddressCreateManyCustomerOrderInputEnvelopeToJson(
    AddressCreateManyCustomerOrderInputEnvelope instance) {
  final val = <String, dynamic>{
    'data': instance.data.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('skipDuplicates', instance.skipDuplicates);
  return val;
}

OrderItemsCreateWithoutCustomerOrderInput
    _$OrderItemsCreateWithoutCustomerOrderInputFromJson(
            Map<String, dynamic> json) =>
        OrderItemsCreateWithoutCustomerOrderInput(
          amount: json['amount'] as int,
          price: json['price'] as int,
        );

Map<String, dynamic> _$OrderItemsCreateWithoutCustomerOrderInputToJson(
        OrderItemsCreateWithoutCustomerOrderInput instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'price': instance.price,
    };

OrderItemsUncheckedCreateWithoutCustomerOrderInput
    _$OrderItemsUncheckedCreateWithoutCustomerOrderInputFromJson(
            Map<String, dynamic> json) =>
        OrderItemsUncheckedCreateWithoutCustomerOrderInput(
          amount: json['amount'] as int,
          price: json['price'] as int,
        );

Map<String, dynamic> _$OrderItemsUncheckedCreateWithoutCustomerOrderInputToJson(
        OrderItemsUncheckedCreateWithoutCustomerOrderInput instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'price': instance.price,
    };

OrderItemsCreateOrConnectWithoutCustomerOrderInput
    _$OrderItemsCreateOrConnectWithoutCustomerOrderInputFromJson(
            Map<String, dynamic> json) =>
        OrderItemsCreateOrConnectWithoutCustomerOrderInput(
          where: OrderItemsWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          create: OrderItemsCreateWithoutCustomerOrderInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$OrderItemsCreateOrConnectWithoutCustomerOrderInputToJson(
        OrderItemsCreateOrConnectWithoutCustomerOrderInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'create': instance.create.toJson(),
    };

OrderItemsCreateManyCustomerOrderInputEnvelope
    _$OrderItemsCreateManyCustomerOrderInputEnvelopeFromJson(
            Map<String, dynamic> json) =>
        OrderItemsCreateManyCustomerOrderInputEnvelope(
          data: (json['data'] as List<dynamic>).map((e) =>
              OrderItemsCreateManyCustomerOrderInput.fromJson(
                  e as Map<String, dynamic>)),
          skipDuplicates: json['skipDuplicates'] as bool?,
        );

Map<String, dynamic> _$OrderItemsCreateManyCustomerOrderInputEnvelopeToJson(
    OrderItemsCreateManyCustomerOrderInputEnvelope instance) {
  final val = <String, dynamic>{
    'data': instance.data.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('skipDuplicates', instance.skipDuplicates);
  return val;
}

AddressUpsertWithWhereUniqueWithoutCustomerOrderInput
    _$AddressUpsertWithWhereUniqueWithoutCustomerOrderInputFromJson(
            Map<String, dynamic> json) =>
        AddressUpsertWithWhereUniqueWithoutCustomerOrderInput(
          where: AddressWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          update: AddressUpdateWithoutCustomerOrderInput.fromJson(
              json['update'] as Map<String, dynamic>),
          create: AddressCreateWithoutCustomerOrderInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$AddressUpsertWithWhereUniqueWithoutCustomerOrderInputToJson(
            AddressUpsertWithWhereUniqueWithoutCustomerOrderInput instance) =>
        <String, dynamic>{
          'where': instance.where.toJson(),
          'update': instance.update.toJson(),
          'create': instance.create.toJson(),
        };

AddressUpdateWithWhereUniqueWithoutCustomerOrderInput
    _$AddressUpdateWithWhereUniqueWithoutCustomerOrderInputFromJson(
            Map<String, dynamic> json) =>
        AddressUpdateWithWhereUniqueWithoutCustomerOrderInput(
          where: AddressWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          data: AddressUpdateWithoutCustomerOrderInput.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$AddressUpdateWithWhereUniqueWithoutCustomerOrderInputToJson(
            AddressUpdateWithWhereUniqueWithoutCustomerOrderInput instance) =>
        <String, dynamic>{
          'where': instance.where.toJson(),
          'data': instance.data.toJson(),
        };

AddressUpdateManyWithWhereWithoutCustomerOrderInput
    _$AddressUpdateManyWithWhereWithoutCustomerOrderInputFromJson(
            Map<String, dynamic> json) =>
        AddressUpdateManyWithWhereWithoutCustomerOrderInput(
          where: AddressScalarWhereInput.fromJson(
              json['where'] as Map<String, dynamic>),
          data: AddressUpdateManyMutationInput.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$AddressUpdateManyWithWhereWithoutCustomerOrderInputToJson(
            AddressUpdateManyWithWhereWithoutCustomerOrderInput instance) =>
        <String, dynamic>{
          'where': instance.where.toJson(),
          'data': instance.data.toJson(),
        };

AddressScalarWhereInput _$AddressScalarWhereInputFromJson(
        Map<String, dynamic> json) =>
    AddressScalarWhereInput(
      AND: (json['AND'] as List<dynamic>?)?.map(
          (e) => AddressScalarWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)?.map(
          (e) => AddressScalarWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)?.map(
          (e) => AddressScalarWhereInput.fromJson(e as Map<String, dynamic>)),
      street: json['street'] == null
          ? null
          : StringFilter.fromJson(json['street'] as Map<String, dynamic>),
      district: json['district'] == null
          ? null
          : StringFilter.fromJson(json['district'] as Map<String, dynamic>),
      number: json['number'] == null
          ? null
          : IntFilter.fromJson(json['number'] as Map<String, dynamic>),
      city: json['city'] == null
          ? null
          : StringFilter.fromJson(json['city'] as Map<String, dynamic>),
      customerOrderId: json['customer_order_id'] == null
          ? null
          : IntFilter.fromJson(
              json['customer_order_id'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddressScalarWhereInputToJson(
    AddressScalarWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('street', instance.street?.toJson());
  writeNotNull('district', instance.district?.toJson());
  writeNotNull('number', instance.number?.toJson());
  writeNotNull('city', instance.city?.toJson());
  writeNotNull('customer_order_id', instance.customerOrderId?.toJson());
  return val;
}

OrderItemsUpsertWithWhereUniqueWithoutCustomerOrderInput
    _$OrderItemsUpsertWithWhereUniqueWithoutCustomerOrderInputFromJson(
            Map<String, dynamic> json) =>
        OrderItemsUpsertWithWhereUniqueWithoutCustomerOrderInput(
          where: OrderItemsWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          update: OrderItemsUpdateWithoutCustomerOrderInput.fromJson(
              json['update'] as Map<String, dynamic>),
          create: OrderItemsCreateWithoutCustomerOrderInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String,
    dynamic> _$OrderItemsUpsertWithWhereUniqueWithoutCustomerOrderInputToJson(
        OrderItemsUpsertWithWhereUniqueWithoutCustomerOrderInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'update': instance.update.toJson(),
      'create': instance.create.toJson(),
    };

OrderItemsUpdateWithWhereUniqueWithoutCustomerOrderInput
    _$OrderItemsUpdateWithWhereUniqueWithoutCustomerOrderInputFromJson(
            Map<String, dynamic> json) =>
        OrderItemsUpdateWithWhereUniqueWithoutCustomerOrderInput(
          where: OrderItemsWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          data: OrderItemsUpdateWithoutCustomerOrderInput.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String,
    dynamic> _$OrderItemsUpdateWithWhereUniqueWithoutCustomerOrderInputToJson(
        OrderItemsUpdateWithWhereUniqueWithoutCustomerOrderInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'data': instance.data.toJson(),
    };

OrderItemsUpdateManyWithWhereWithoutCustomerOrderInput
    _$OrderItemsUpdateManyWithWhereWithoutCustomerOrderInputFromJson(
            Map<String, dynamic> json) =>
        OrderItemsUpdateManyWithWhereWithoutCustomerOrderInput(
          where: OrderItemsScalarWhereInput.fromJson(
              json['where'] as Map<String, dynamic>),
          data: OrderItemsUpdateManyMutationInput.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$OrderItemsUpdateManyWithWhereWithoutCustomerOrderInputToJson(
            OrderItemsUpdateManyWithWhereWithoutCustomerOrderInput instance) =>
        <String, dynamic>{
          'where': instance.where.toJson(),
          'data': instance.data.toJson(),
        };

OrderItemsScalarWhereInput _$OrderItemsScalarWhereInputFromJson(
        Map<String, dynamic> json) =>
    OrderItemsScalarWhereInput(
      AND: (json['AND'] as List<dynamic>?)?.map((e) =>
          OrderItemsScalarWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)?.map((e) =>
          OrderItemsScalarWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)?.map((e) =>
          OrderItemsScalarWhereInput.fromJson(e as Map<String, dynamic>)),
      customerOrderId: json['customer_order_id'] == null
          ? null
          : IntFilter.fromJson(
              json['customer_order_id'] as Map<String, dynamic>),
      amount: json['amount'] == null
          ? null
          : IntFilter.fromJson(json['amount'] as Map<String, dynamic>),
      price: json['price'] == null
          ? null
          : IntFilter.fromJson(json['price'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderItemsScalarWhereInputToJson(
    OrderItemsScalarWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('customer_order_id', instance.customerOrderId?.toJson());
  writeNotNull('amount', instance.amount?.toJson());
  writeNotNull('price', instance.price?.toJson());
  return val;
}

CustomerOrderCreateWithoutAddressInput
    _$CustomerOrderCreateWithoutAddressInputFromJson(
            Map<String, dynamic> json) =>
        CustomerOrderCreateWithoutAddressInput(
          customerName: json['customer_name'] as String,
          status: json['status'] as String,
          totalPrice: json['totalPrice'] as int,
          created:
              const DateTimeJsonConverter().fromJson(json['created'] as String),
          orderItems: json['orderItems'] == null
              ? null
              : OrderItemsCreateNestedManyWithoutCustomerOrderInput.fromJson(
                  json['orderItems'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CustomerOrderCreateWithoutAddressInputToJson(
    CustomerOrderCreateWithoutAddressInput instance) {
  final val = <String, dynamic>{
    'customer_name': instance.customerName,
    'status': instance.status,
    'totalPrice': instance.totalPrice,
    'created': const DateTimeJsonConverter().toJson(instance.created),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('orderItems', instance.orderItems?.toJson());
  return val;
}

CustomerOrderUncheckedCreateWithoutAddressInput
    _$CustomerOrderUncheckedCreateWithoutAddressInputFromJson(
            Map<String, dynamic> json) =>
        CustomerOrderUncheckedCreateWithoutAddressInput(
          id: json['id'] as int?,
          customerName: json['customer_name'] as String,
          status: json['status'] as String,
          totalPrice: json['totalPrice'] as int,
          created:
              const DateTimeJsonConverter().fromJson(json['created'] as String),
          orderItems: json['orderItems'] == null
              ? null
              : OrderItemsUncheckedCreateNestedManyWithoutCustomerOrderInput
                  .fromJson(json['orderItems'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CustomerOrderUncheckedCreateWithoutAddressInputToJson(
    CustomerOrderUncheckedCreateWithoutAddressInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['customer_name'] = instance.customerName;
  val['status'] = instance.status;
  val['totalPrice'] = instance.totalPrice;
  val['created'] = const DateTimeJsonConverter().toJson(instance.created);
  writeNotNull('orderItems', instance.orderItems?.toJson());
  return val;
}

CustomerOrderCreateOrConnectWithoutAddressInput
    _$CustomerOrderCreateOrConnectWithoutAddressInputFromJson(
            Map<String, dynamic> json) =>
        CustomerOrderCreateOrConnectWithoutAddressInput(
          where: CustomerOrderWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          create: CustomerOrderCreateWithoutAddressInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CustomerOrderCreateOrConnectWithoutAddressInputToJson(
        CustomerOrderCreateOrConnectWithoutAddressInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'create': instance.create.toJson(),
    };

CustomerOrderUpsertWithoutAddressInput
    _$CustomerOrderUpsertWithoutAddressInputFromJson(
            Map<String, dynamic> json) =>
        CustomerOrderUpsertWithoutAddressInput(
          update: CustomerOrderUpdateWithoutAddressInput.fromJson(
              json['update'] as Map<String, dynamic>),
          create: CustomerOrderCreateWithoutAddressInput.fromJson(
              json['create'] as Map<String, dynamic>),
          where: json['where'] == null
              ? null
              : CustomerOrderWhereInput.fromJson(
                  json['where'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CustomerOrderUpsertWithoutAddressInputToJson(
    CustomerOrderUpsertWithoutAddressInput instance) {
  final val = <String, dynamic>{
    'update': instance.update.toJson(),
    'create': instance.create.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('where', instance.where?.toJson());
  return val;
}

CustomerOrderUpdateToOneWithWhereWithoutAddressInput
    _$CustomerOrderUpdateToOneWithWhereWithoutAddressInputFromJson(
            Map<String, dynamic> json) =>
        CustomerOrderUpdateToOneWithWhereWithoutAddressInput(
          where: json['where'] == null
              ? null
              : CustomerOrderWhereInput.fromJson(
                  json['where'] as Map<String, dynamic>),
          data: CustomerOrderUpdateWithoutAddressInput.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$CustomerOrderUpdateToOneWithWhereWithoutAddressInputToJson(
        CustomerOrderUpdateToOneWithWhereWithoutAddressInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('where', instance.where?.toJson());
  val['data'] = instance.data.toJson();
  return val;
}

CustomerOrderUpdateWithoutAddressInput
    _$CustomerOrderUpdateWithoutAddressInputFromJson(
            Map<String, dynamic> json) =>
        CustomerOrderUpdateWithoutAddressInput(
          customerName: json['customer_name'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['customer_name'] as Map<String, dynamic>),
          status: json['status'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['status'] as Map<String, dynamic>),
          totalPrice: json['totalPrice'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['totalPrice'] as Map<String, dynamic>),
          created: json['created'] == null
              ? null
              : DateTimeFieldUpdateOperationsInput.fromJson(
                  json['created'] as Map<String, dynamic>),
          orderItems: json['orderItems'] == null
              ? null
              : OrderItemsUpdateManyWithoutCustomerOrderNestedInput.fromJson(
                  json['orderItems'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CustomerOrderUpdateWithoutAddressInputToJson(
    CustomerOrderUpdateWithoutAddressInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('customer_name', instance.customerName?.toJson());
  writeNotNull('status', instance.status?.toJson());
  writeNotNull('totalPrice', instance.totalPrice?.toJson());
  writeNotNull('created', instance.created?.toJson());
  writeNotNull('orderItems', instance.orderItems?.toJson());
  return val;
}

CustomerOrderUncheckedUpdateWithoutAddressInput
    _$CustomerOrderUncheckedUpdateWithoutAddressInputFromJson(
            Map<String, dynamic> json) =>
        CustomerOrderUncheckedUpdateWithoutAddressInput(
          id: json['id'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['id'] as Map<String, dynamic>),
          customerName: json['customer_name'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['customer_name'] as Map<String, dynamic>),
          status: json['status'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['status'] as Map<String, dynamic>),
          totalPrice: json['totalPrice'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['totalPrice'] as Map<String, dynamic>),
          created: json['created'] == null
              ? null
              : DateTimeFieldUpdateOperationsInput.fromJson(
                  json['created'] as Map<String, dynamic>),
          orderItems: json['orderItems'] == null
              ? null
              : OrderItemsUncheckedUpdateManyWithoutCustomerOrderNestedInput
                  .fromJson(json['orderItems'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CustomerOrderUncheckedUpdateWithoutAddressInputToJson(
    CustomerOrderUncheckedUpdateWithoutAddressInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('customer_name', instance.customerName?.toJson());
  writeNotNull('status', instance.status?.toJson());
  writeNotNull('totalPrice', instance.totalPrice?.toJson());
  writeNotNull('created', instance.created?.toJson());
  writeNotNull('orderItems', instance.orderItems?.toJson());
  return val;
}

CustomerOrderCreateWithoutOrderItemsInput
    _$CustomerOrderCreateWithoutOrderItemsInputFromJson(
            Map<String, dynamic> json) =>
        CustomerOrderCreateWithoutOrderItemsInput(
          customerName: json['customer_name'] as String,
          status: json['status'] as String,
          totalPrice: json['totalPrice'] as int,
          created:
              const DateTimeJsonConverter().fromJson(json['created'] as String),
          address: json['address'] == null
              ? null
              : AddressCreateNestedManyWithoutCustomerOrderInput.fromJson(
                  json['address'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CustomerOrderCreateWithoutOrderItemsInputToJson(
    CustomerOrderCreateWithoutOrderItemsInput instance) {
  final val = <String, dynamic>{
    'customer_name': instance.customerName,
    'status': instance.status,
    'totalPrice': instance.totalPrice,
    'created': const DateTimeJsonConverter().toJson(instance.created),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('address', instance.address?.toJson());
  return val;
}

CustomerOrderUncheckedCreateWithoutOrderItemsInput
    _$CustomerOrderUncheckedCreateWithoutOrderItemsInputFromJson(
            Map<String, dynamic> json) =>
        CustomerOrderUncheckedCreateWithoutOrderItemsInput(
          id: json['id'] as int?,
          customerName: json['customer_name'] as String,
          status: json['status'] as String,
          totalPrice: json['totalPrice'] as int,
          created:
              const DateTimeJsonConverter().fromJson(json['created'] as String),
          address: json['address'] == null
              ? null
              : AddressUncheckedCreateNestedManyWithoutCustomerOrderInput
                  .fromJson(json['address'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CustomerOrderUncheckedCreateWithoutOrderItemsInputToJson(
    CustomerOrderUncheckedCreateWithoutOrderItemsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['customer_name'] = instance.customerName;
  val['status'] = instance.status;
  val['totalPrice'] = instance.totalPrice;
  val['created'] = const DateTimeJsonConverter().toJson(instance.created);
  writeNotNull('address', instance.address?.toJson());
  return val;
}

CustomerOrderCreateOrConnectWithoutOrderItemsInput
    _$CustomerOrderCreateOrConnectWithoutOrderItemsInputFromJson(
            Map<String, dynamic> json) =>
        CustomerOrderCreateOrConnectWithoutOrderItemsInput(
          where: CustomerOrderWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          create: CustomerOrderCreateWithoutOrderItemsInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CustomerOrderCreateOrConnectWithoutOrderItemsInputToJson(
        CustomerOrderCreateOrConnectWithoutOrderItemsInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'create': instance.create.toJson(),
    };

CustomerOrderUpsertWithoutOrderItemsInput
    _$CustomerOrderUpsertWithoutOrderItemsInputFromJson(
            Map<String, dynamic> json) =>
        CustomerOrderUpsertWithoutOrderItemsInput(
          update: CustomerOrderUpdateWithoutOrderItemsInput.fromJson(
              json['update'] as Map<String, dynamic>),
          create: CustomerOrderCreateWithoutOrderItemsInput.fromJson(
              json['create'] as Map<String, dynamic>),
          where: json['where'] == null
              ? null
              : CustomerOrderWhereInput.fromJson(
                  json['where'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CustomerOrderUpsertWithoutOrderItemsInputToJson(
    CustomerOrderUpsertWithoutOrderItemsInput instance) {
  final val = <String, dynamic>{
    'update': instance.update.toJson(),
    'create': instance.create.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('where', instance.where?.toJson());
  return val;
}

CustomerOrderUpdateToOneWithWhereWithoutOrderItemsInput
    _$CustomerOrderUpdateToOneWithWhereWithoutOrderItemsInputFromJson(
            Map<String, dynamic> json) =>
        CustomerOrderUpdateToOneWithWhereWithoutOrderItemsInput(
          where: json['where'] == null
              ? null
              : CustomerOrderWhereInput.fromJson(
                  json['where'] as Map<String, dynamic>),
          data: CustomerOrderUpdateWithoutOrderItemsInput.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$CustomerOrderUpdateToOneWithWhereWithoutOrderItemsInputToJson(
        CustomerOrderUpdateToOneWithWhereWithoutOrderItemsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('where', instance.where?.toJson());
  val['data'] = instance.data.toJson();
  return val;
}

CustomerOrderUpdateWithoutOrderItemsInput
    _$CustomerOrderUpdateWithoutOrderItemsInputFromJson(
            Map<String, dynamic> json) =>
        CustomerOrderUpdateWithoutOrderItemsInput(
          customerName: json['customer_name'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['customer_name'] as Map<String, dynamic>),
          status: json['status'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['status'] as Map<String, dynamic>),
          totalPrice: json['totalPrice'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['totalPrice'] as Map<String, dynamic>),
          created: json['created'] == null
              ? null
              : DateTimeFieldUpdateOperationsInput.fromJson(
                  json['created'] as Map<String, dynamic>),
          address: json['address'] == null
              ? null
              : AddressUpdateManyWithoutCustomerOrderNestedInput.fromJson(
                  json['address'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CustomerOrderUpdateWithoutOrderItemsInputToJson(
    CustomerOrderUpdateWithoutOrderItemsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('customer_name', instance.customerName?.toJson());
  writeNotNull('status', instance.status?.toJson());
  writeNotNull('totalPrice', instance.totalPrice?.toJson());
  writeNotNull('created', instance.created?.toJson());
  writeNotNull('address', instance.address?.toJson());
  return val;
}

CustomerOrderUncheckedUpdateWithoutOrderItemsInput
    _$CustomerOrderUncheckedUpdateWithoutOrderItemsInputFromJson(
            Map<String, dynamic> json) =>
        CustomerOrderUncheckedUpdateWithoutOrderItemsInput(
          id: json['id'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['id'] as Map<String, dynamic>),
          customerName: json['customer_name'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['customer_name'] as Map<String, dynamic>),
          status: json['status'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['status'] as Map<String, dynamic>),
          totalPrice: json['totalPrice'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['totalPrice'] as Map<String, dynamic>),
          created: json['created'] == null
              ? null
              : DateTimeFieldUpdateOperationsInput.fromJson(
                  json['created'] as Map<String, dynamic>),
          address: json['address'] == null
              ? null
              : AddressUncheckedUpdateManyWithoutCustomerOrderNestedInput
                  .fromJson(json['address'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CustomerOrderUncheckedUpdateWithoutOrderItemsInputToJson(
    CustomerOrderUncheckedUpdateWithoutOrderItemsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('customer_name', instance.customerName?.toJson());
  writeNotNull('status', instance.status?.toJson());
  writeNotNull('totalPrice', instance.totalPrice?.toJson());
  writeNotNull('created', instance.created?.toJson());
  writeNotNull('address', instance.address?.toJson());
  return val;
}

ProductCommentCreateManyProductInput
    _$ProductCommentCreateManyProductInputFromJson(Map<String, dynamic> json) =>
        ProductCommentCreateManyProductInput(
          id: json['id'] as String?,
          username: json['username'] as String,
          ratings: (json['ratings'] as num).toDouble(),
          email: json['email'] as String,
          comment: json['comment'] as String,
          created:
              const DateTimeJsonConverter().fromJson(json['created'] as String),
        );

Map<String, dynamic> _$ProductCommentCreateManyProductInputToJson(
    ProductCommentCreateManyProductInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['username'] = instance.username;
  val['ratings'] = instance.ratings;
  val['email'] = instance.email;
  val['comment'] = instance.comment;
  val['created'] = const DateTimeJsonConverter().toJson(instance.created);
  return val;
}

ProductCommentUpdateWithoutProductInput
    _$ProductCommentUpdateWithoutProductInputFromJson(
            Map<String, dynamic> json) =>
        ProductCommentUpdateWithoutProductInput(
          id: json['id'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['id'] as Map<String, dynamic>),
          username: json['username'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['username'] as Map<String, dynamic>),
          ratings: json['ratings'] == null
              ? null
              : FloatFieldUpdateOperationsInput.fromJson(
                  json['ratings'] as Map<String, dynamic>),
          email: json['email'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['email'] as Map<String, dynamic>),
          comment: json['comment'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['comment'] as Map<String, dynamic>),
          created: json['created'] == null
              ? null
              : DateTimeFieldUpdateOperationsInput.fromJson(
                  json['created'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$ProductCommentUpdateWithoutProductInputToJson(
    ProductCommentUpdateWithoutProductInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('username', instance.username?.toJson());
  writeNotNull('ratings', instance.ratings?.toJson());
  writeNotNull('email', instance.email?.toJson());
  writeNotNull('comment', instance.comment?.toJson());
  writeNotNull('created', instance.created?.toJson());
  return val;
}

ProductCommentUncheckedUpdateWithoutProductInput
    _$ProductCommentUncheckedUpdateWithoutProductInputFromJson(
            Map<String, dynamic> json) =>
        ProductCommentUncheckedUpdateWithoutProductInput(
          id: json['id'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['id'] as Map<String, dynamic>),
          username: json['username'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['username'] as Map<String, dynamic>),
          ratings: json['ratings'] == null
              ? null
              : FloatFieldUpdateOperationsInput.fromJson(
                  json['ratings'] as Map<String, dynamic>),
          email: json['email'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['email'] as Map<String, dynamic>),
          comment: json['comment'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['comment'] as Map<String, dynamic>),
          created: json['created'] == null
              ? null
              : DateTimeFieldUpdateOperationsInput.fromJson(
                  json['created'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$ProductCommentUncheckedUpdateWithoutProductInputToJson(
    ProductCommentUncheckedUpdateWithoutProductInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('username', instance.username?.toJson());
  writeNotNull('ratings', instance.ratings?.toJson());
  writeNotNull('email', instance.email?.toJson());
  writeNotNull('comment', instance.comment?.toJson());
  writeNotNull('created', instance.created?.toJson());
  return val;
}

ProductCommentUncheckedUpdateManyWithoutProductInput
    _$ProductCommentUncheckedUpdateManyWithoutProductInputFromJson(
            Map<String, dynamic> json) =>
        ProductCommentUncheckedUpdateManyWithoutProductInput(
          id: json['id'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['id'] as Map<String, dynamic>),
          username: json['username'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['username'] as Map<String, dynamic>),
          ratings: json['ratings'] == null
              ? null
              : FloatFieldUpdateOperationsInput.fromJson(
                  json['ratings'] as Map<String, dynamic>),
          email: json['email'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['email'] as Map<String, dynamic>),
          comment: json['comment'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['comment'] as Map<String, dynamic>),
          created: json['created'] == null
              ? null
              : DateTimeFieldUpdateOperationsInput.fromJson(
                  json['created'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$ProductCommentUncheckedUpdateManyWithoutProductInputToJson(
        ProductCommentUncheckedUpdateManyWithoutProductInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('username', instance.username?.toJson());
  writeNotNull('ratings', instance.ratings?.toJson());
  writeNotNull('email', instance.email?.toJson());
  writeNotNull('comment', instance.comment?.toJson());
  writeNotNull('created', instance.created?.toJson());
  return val;
}

AddressCreateManyCustomerOrderInput
    _$AddressCreateManyCustomerOrderInputFromJson(Map<String, dynamic> json) =>
        AddressCreateManyCustomerOrderInput(
          street: json['street'] as String,
          district: json['district'] as String,
          number: json['number'] as int,
          city: json['city'] as String,
        );

Map<String, dynamic> _$AddressCreateManyCustomerOrderInputToJson(
        AddressCreateManyCustomerOrderInput instance) =>
    <String, dynamic>{
      'street': instance.street,
      'district': instance.district,
      'number': instance.number,
      'city': instance.city,
    };

OrderItemsCreateManyCustomerOrderInput
    _$OrderItemsCreateManyCustomerOrderInputFromJson(
            Map<String, dynamic> json) =>
        OrderItemsCreateManyCustomerOrderInput(
          amount: json['amount'] as int,
          price: json['price'] as int,
        );

Map<String, dynamic> _$OrderItemsCreateManyCustomerOrderInputToJson(
        OrderItemsCreateManyCustomerOrderInput instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'price': instance.price,
    };

AddressUpdateWithoutCustomerOrderInput
    _$AddressUpdateWithoutCustomerOrderInputFromJson(
            Map<String, dynamic> json) =>
        AddressUpdateWithoutCustomerOrderInput(
          street: json['street'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['street'] as Map<String, dynamic>),
          district: json['district'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['district'] as Map<String, dynamic>),
          number: json['number'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['number'] as Map<String, dynamic>),
          city: json['city'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['city'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$AddressUpdateWithoutCustomerOrderInputToJson(
    AddressUpdateWithoutCustomerOrderInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('street', instance.street?.toJson());
  writeNotNull('district', instance.district?.toJson());
  writeNotNull('number', instance.number?.toJson());
  writeNotNull('city', instance.city?.toJson());
  return val;
}

AddressUncheckedUpdateWithoutCustomerOrderInput
    _$AddressUncheckedUpdateWithoutCustomerOrderInputFromJson(
            Map<String, dynamic> json) =>
        AddressUncheckedUpdateWithoutCustomerOrderInput(
          street: json['street'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['street'] as Map<String, dynamic>),
          district: json['district'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['district'] as Map<String, dynamic>),
          number: json['number'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['number'] as Map<String, dynamic>),
          city: json['city'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['city'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$AddressUncheckedUpdateWithoutCustomerOrderInputToJson(
    AddressUncheckedUpdateWithoutCustomerOrderInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('street', instance.street?.toJson());
  writeNotNull('district', instance.district?.toJson());
  writeNotNull('number', instance.number?.toJson());
  writeNotNull('city', instance.city?.toJson());
  return val;
}

AddressUncheckedUpdateManyWithoutCustomerOrderInput
    _$AddressUncheckedUpdateManyWithoutCustomerOrderInputFromJson(
            Map<String, dynamic> json) =>
        AddressUncheckedUpdateManyWithoutCustomerOrderInput(
          street: json['street'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['street'] as Map<String, dynamic>),
          district: json['district'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['district'] as Map<String, dynamic>),
          number: json['number'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['number'] as Map<String, dynamic>),
          city: json['city'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['city'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$AddressUncheckedUpdateManyWithoutCustomerOrderInputToJson(
        AddressUncheckedUpdateManyWithoutCustomerOrderInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('street', instance.street?.toJson());
  writeNotNull('district', instance.district?.toJson());
  writeNotNull('number', instance.number?.toJson());
  writeNotNull('city', instance.city?.toJson());
  return val;
}

OrderItemsUpdateWithoutCustomerOrderInput
    _$OrderItemsUpdateWithoutCustomerOrderInputFromJson(
            Map<String, dynamic> json) =>
        OrderItemsUpdateWithoutCustomerOrderInput(
          amount: json['amount'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['amount'] as Map<String, dynamic>),
          price: json['price'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['price'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$OrderItemsUpdateWithoutCustomerOrderInputToJson(
    OrderItemsUpdateWithoutCustomerOrderInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('amount', instance.amount?.toJson());
  writeNotNull('price', instance.price?.toJson());
  return val;
}

OrderItemsUncheckedUpdateWithoutCustomerOrderInput
    _$OrderItemsUncheckedUpdateWithoutCustomerOrderInputFromJson(
            Map<String, dynamic> json) =>
        OrderItemsUncheckedUpdateWithoutCustomerOrderInput(
          amount: json['amount'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['amount'] as Map<String, dynamic>),
          price: json['price'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['price'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$OrderItemsUncheckedUpdateWithoutCustomerOrderInputToJson(
    OrderItemsUncheckedUpdateWithoutCustomerOrderInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('amount', instance.amount?.toJson());
  writeNotNull('price', instance.price?.toJson());
  return val;
}

OrderItemsUncheckedUpdateManyWithoutCustomerOrderInput
    _$OrderItemsUncheckedUpdateManyWithoutCustomerOrderInputFromJson(
            Map<String, dynamic> json) =>
        OrderItemsUncheckedUpdateManyWithoutCustomerOrderInput(
          amount: json['amount'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['amount'] as Map<String, dynamic>),
          price: json['price'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['price'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$OrderItemsUncheckedUpdateManyWithoutCustomerOrderInputToJson(
        OrderItemsUncheckedUpdateManyWithoutCustomerOrderInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('amount', instance.amount?.toJson());
  writeNotNull('price', instance.price?.toJson());
  return val;
}

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['id'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'password': instance.password,
    };

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      imgUrl: json['img_url'] as String,
      price: json['price'] as int,
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'img_url': instance.imgUrl,
      'price': instance.price,
    };

ProductComment _$ProductCommentFromJson(Map<String, dynamic> json) =>
    ProductComment(
      id: json['id'] as String,
      productId: json['productId'] as String,
      username: json['username'] as String,
      ratings: (json['ratings'] as num).toDouble(),
      email: json['email'] as String,
      comment: json['comment'] as String,
      created:
          const DateTimeJsonConverter().fromJson(json['created'] as String),
    );

Map<String, dynamic> _$ProductCommentToJson(ProductComment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'productId': instance.productId,
      'username': instance.username,
      'ratings': instance.ratings,
      'email': instance.email,
      'comment': instance.comment,
      'created': const DateTimeJsonConverter().toJson(instance.created),
    };

CustomerOrder _$CustomerOrderFromJson(Map<String, dynamic> json) =>
    CustomerOrder(
      id: json['id'] as int,
      customerName: json['customer_name'] as String,
      status: json['status'] as String,
      totalPrice: json['totalPrice'] as int,
      created:
          const DateTimeJsonConverter().fromJson(json['created'] as String),
    );

Map<String, dynamic> _$CustomerOrderToJson(CustomerOrder instance) =>
    <String, dynamic>{
      'id': instance.id,
      'customer_name': instance.customerName,
      'status': instance.status,
      'totalPrice': instance.totalPrice,
      'created': const DateTimeJsonConverter().toJson(instance.created),
    };

Address _$AddressFromJson(Map<String, dynamic> json) => Address(
      street: json['street'] as String,
      district: json['district'] as String,
      number: json['number'] as int,
      city: json['city'] as String,
      customerOrderId: json['customer_order_id'] as int,
    );

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
      'street': instance.street,
      'district': instance.district,
      'number': instance.number,
      'city': instance.city,
      'customer_order_id': instance.customerOrderId,
    };

OrderItems _$OrderItemsFromJson(Map<String, dynamic> json) => OrderItems(
      customerOrderId: json['customer_order_id'] as int,
      amount: json['amount'] as int,
      price: json['price'] as int,
    );

Map<String, dynamic> _$OrderItemsToJson(OrderItems instance) =>
    <String, dynamic>{
      'customer_order_id': instance.customerOrderId,
      'amount': instance.amount,
      'price': instance.price,
    };

UserGroupByOutputType _$UserGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    UserGroupByOutputType(
      id: json['id'] as String?,
      username: json['username'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$UserGroupByOutputTypeToJson(
    UserGroupByOutputType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('username', instance.username);
  writeNotNull('email', instance.email);
  writeNotNull('password', instance.password);
  return val;
}

ProductGroupByOutputType _$ProductGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    ProductGroupByOutputType(
      id: json['id'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      imgUrl: json['img_url'] as String?,
      price: json['price'] as int?,
    );

Map<String, dynamic> _$ProductGroupByOutputTypeToJson(
    ProductGroupByOutputType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('description', instance.description);
  writeNotNull('img_url', instance.imgUrl);
  writeNotNull('price', instance.price);
  return val;
}

ProductCommentGroupByOutputType _$ProductCommentGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    ProductCommentGroupByOutputType(
      id: json['id'] as String?,
      productId: json['productId'] as String?,
      username: json['username'] as String?,
      ratings: (json['ratings'] as num?)?.toDouble(),
      email: json['email'] as String?,
      comment: json['comment'] as String?,
      created: _$JsonConverterFromJson<String, DateTime>(
          json['created'], const DateTimeJsonConverter().fromJson),
    );

Map<String, dynamic> _$ProductCommentGroupByOutputTypeToJson(
    ProductCommentGroupByOutputType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('productId', instance.productId);
  writeNotNull('username', instance.username);
  writeNotNull('ratings', instance.ratings);
  writeNotNull('email', instance.email);
  writeNotNull('comment', instance.comment);
  writeNotNull(
      'created',
      _$JsonConverterToJson<String, DateTime>(
          instance.created, const DateTimeJsonConverter().toJson));
  return val;
}

CustomerOrderGroupByOutputType _$CustomerOrderGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    CustomerOrderGroupByOutputType(
      id: json['id'] as int?,
      customerName: json['customer_name'] as String?,
      status: json['status'] as String?,
      totalPrice: json['totalPrice'] as int?,
      created: _$JsonConverterFromJson<String, DateTime>(
          json['created'], const DateTimeJsonConverter().fromJson),
    );

Map<String, dynamic> _$CustomerOrderGroupByOutputTypeToJson(
    CustomerOrderGroupByOutputType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('customer_name', instance.customerName);
  writeNotNull('status', instance.status);
  writeNotNull('totalPrice', instance.totalPrice);
  writeNotNull(
      'created',
      _$JsonConverterToJson<String, DateTime>(
          instance.created, const DateTimeJsonConverter().toJson));
  return val;
}

AddressGroupByOutputType _$AddressGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    AddressGroupByOutputType(
      street: json['street'] as String?,
      district: json['district'] as String?,
      number: json['number'] as int?,
      city: json['city'] as String?,
      customerOrderId: json['customer_order_id'] as int?,
    );

Map<String, dynamic> _$AddressGroupByOutputTypeToJson(
    AddressGroupByOutputType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('street', instance.street);
  writeNotNull('district', instance.district);
  writeNotNull('number', instance.number);
  writeNotNull('city', instance.city);
  writeNotNull('customer_order_id', instance.customerOrderId);
  return val;
}

OrderItemsGroupByOutputType _$OrderItemsGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    OrderItemsGroupByOutputType(
      customerOrderId: json['customer_order_id'] as int?,
      amount: json['amount'] as int?,
      price: json['price'] as int?,
    );

Map<String, dynamic> _$OrderItemsGroupByOutputTypeToJson(
    OrderItemsGroupByOutputType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('customer_order_id', instance.customerOrderId);
  writeNotNull('amount', instance.amount);
  writeNotNull('price', instance.price);
  return val;
}

AffectedRowsOutput _$AffectedRowsOutputFromJson(Map<String, dynamic> json) =>
    AffectedRowsOutput(
      count: json['count'] as int?,
    );

Map<String, dynamic> _$AffectedRowsOutputToJson(AffectedRowsOutput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  return val;
}

Map<String, dynamic> _$DatasourcesToJson(Datasources instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('db', instance.db);
  return val;
}
