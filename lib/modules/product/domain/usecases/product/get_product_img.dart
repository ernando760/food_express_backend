// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:typed_data';

import 'package:delivery_project_using_clean_code/modules/product/domain/errors/i_product_img_exception.dart';
import 'package:delivery_project_using_clean_code/modules/product/domain/repositories/i_product_img_repository.dart';

class GetProductImg {
  final IProductImgRepository _repository;
  GetProductImg(
    this._repository,
  );

  Future<({Uint8List? bytes, IProductImgException? exception, String? imgType})>
      call(fileName) async {
    return await _repository.getProductImgUrlAsBytes(fileName);
  }
}
