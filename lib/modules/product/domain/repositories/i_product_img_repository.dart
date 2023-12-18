import 'dart:typed_data';

import 'package:delivery_project_using_clean_code/modules/product/domain/errors/i_product_exception.dart';

abstract class IProductImgRepository {
  Future<({Uint8List? bytes, String? imgType, IProductException? exception})>
      getProductImgUrl(fileName);

  Future<String?> addProductImg({String? imgUrl, required String imageName});

  Future<String?> deleteProductImg(String path);
  Future<String?> updateProductImg(
      {String? productId,
      String? imgUrl,
      required String newImageName,
      required String oldImageUrl});
}
