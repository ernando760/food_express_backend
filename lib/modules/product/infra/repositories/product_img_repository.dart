import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:delivery_project_using_clean_code/modules/product/domain/errors/i_product_exception.dart';
import 'package:delivery_project_using_clean_code/modules/product/domain/repositories/i_product_img_repository.dart';
import 'package:path/path.dart';
import 'package:http/http.dart' as http;

class ProductImgRepository extends IProductImgRepository {
  @override
  Future<String?> addProductImg(
      {String? imgUrl, required String imageName}) async {
    try {
      if (imgUrl != null) {
        if (imgUrl.contains("base64")) {
          return await _productImgBase64(imgUrl, imageName);
        }
        String fileType = extension(imgUrl).replaceFirst(".", "");

        final createTime =
            DateTime.now().toLocal().toString().replaceAll(" ", "_");

        String path = "./assets/images/${imageName}_$createTime.$fileType";

        final imgfile = await File(path).create()
          ..writeAsBytes(await http.readBytes(Uri.parse(imgUrl)));
        final imgPath =
            "${RegExp(r"([assets/images].+)").stringMatch(imgfile.path)}";
        return imgPath;
      }
      return null;
    } catch (e) {
      print(e);
      return null;
    }
  }

  Future<String> _productImgBase64(String imgBase64, imageName) async {
    final createTime = DateTime.now().toLocal().toString().replaceAll(" ", "_");
    final fileType =
        RegExp(r"[image]+.\/(\w+)").stringMatch(imgBase64)!.split("/")[1];

    final path = "./assets/images/${imageName}_$createTime.$fileType";
    final stringBase64 = imgBase64.split(",")[1];
    final bytes = base64Decode(stringBase64);
    final imgFile = await File(path).create()
      ..writeAsBytes(bytes);
    final imgPathUrl =
        "/products/${RegExp(r"([assets/images].+)").stringMatch(imgFile.path)}";
    return imgPathUrl;
  }

  @override
  Future<String?> deleteProductImg(String path) async {
    try {
      final img = File(path);

      print(await img.exists());
      if (await img.exists()) {
        await img.delete();
        return "Imagem do produto removido";
      }
      return "Imagem do produto não encontrado";
    } catch (e) {
      print(e);
      return null;
    }
  }

  @override
  Future<String?> updateProductImg(
      {String? productId,
      String? imgUrl,
      required String newImageName,
      required String oldImageUrl}) async {
    try {
      final futures = await Future.value([
        await deleteProductImg(".$oldImageUrl"),
        await addProductImg(imgUrl: imgUrl, imageName: newImageName),
      ]);
      final newProductimgPath = futures[1];
      return newProductimgPath;
    } catch (e) {
      print(e);
      return null;
    }
  }

  @override
  Future<({Uint8List? bytes, String? imgType, IProductException? exception})>
      getProductImgUrl(fileName) async {
    try {
      final File imageFile = File("./assets/images/$fileName");

      if (await imageFile.exists()) {
        print("path: ${imageFile.path}");

        final typeFile = extension(imageFile.path).replaceFirst(".", "");

        final bytes = await imageFile.readAsBytes();

        return (bytes: bytes, imgType: typeFile, exception: null);
      }

      return (bytes: null, imgType: null, exception: null);
    } catch (e, s) {
      return (
        bytes: null,
        imgType: null,
        exception: ProductUnknowException(
            messageError: "Error ao obter a imagem do produto",
            label: "ProductRepository-getProductImgUrl",
            stackTrace: s)
      );
    }
  }
}
