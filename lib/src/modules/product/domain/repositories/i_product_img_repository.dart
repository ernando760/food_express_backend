import 'dart:typed_data';
import '../errors/i_product_img_exception.dart';

abstract class IProductImgRepository {
  Future<({Uint8List? bytes, String? imgType, IProductImgException? exception})>
      getProductImgUrlAsBytes(fileName);

  Future<({String? imgFilePath, IProductImgException? exception})>
      addProductImg({String? imgUrl, required String imageName});

  Future<({String? message, IProductImgException? exception})> deleteProductImg(
      String path);
  Future<({String? imgFilePath, IProductImgException? exception})>
      updateProductImg(
          {required String? newImageUrl,
          required String newImageName,
          required String oldImageUrl});
}
