import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:delivery_project_using_clean_code/src/core/storage/i_storage.dart';
import 'package:delivery_project_using_clean_code/src/modules/product/domain/errors/i_product_img_exception.dart';
import 'package:delivery_project_using_clean_code/src/modules/product/domain/repositories/i_product_img_repository.dart';
import 'package:path/path.dart';
import 'package:http/http.dart' as http;

class ProductImgRepository extends IProductImgRepository {
  final IStorage _storage;

  ProductImgRepository(this._storage);

  @override
  Future<({String? imgFilePath, IProductImgException? exception})>
      addProductImg({String? imgUrl, required String imageName}) async {
    try {
      if (imgUrl != null) {
        if (imgUrl.contains("base64")) {
          final imgBase64Conveted = await _productImgBase64(imgUrl, imageName);
          return (imgFilePath: imgBase64Conveted, exception: null);
        }
        final path = _createPath(imgUrl, imageName);
        final (:file, :exception) = await _storage.createFile(path);

        if (file != null) {
          final imgfile =
              await file.writeAsBytes(await http.readBytes(Uri.parse(imgUrl)));
          final imgPath =
              "/products${RegExp(r"([assets/images].+)").stringMatch(imgfile.path)}";
          return (imgFilePath: imgPath, exception: null);
        }
        return (
          imgFilePath: null,
          exception: AddProductImgException(
            messageError: exception!.messageError,
            label: "$runtimeType-addProductImg => ${exception.label}",
          )
        );
      }
      return (
        imgFilePath: null,
        exception: AddProductImgException(
          messageError: "Error ao adicionar a imagem",
          label: "$runtimeType-addProductImg",
        )
      );
    } catch (e, s) {
      return (
        imgFilePath: null,
        exception: AddProductImgException(
            messageError: "Error ao adicionar a imagem => $e",
            label: "$runtimeType-addProductImg",
            stackTrace: s)
      );
    }
  }

  @override
  Future<({String? message, IProductImgException? exception})> deleteProductImg(
      String path) async {
    try {
      final fileImg = await _storage.deleteFile(path);

      if (fileImg.message != null) {
        return (message: "Imagem do produto removido", exception: null);
      }

      return (
        message: null,
        exception: DeleteProductImgException(
            messageError: fileImg.exception!.messageError,
            label: "$runtimeType-deleteProductImg")
      );
    } catch (e, s) {
      return (
        message: null,
        exception: DeleteProductImgException(
            messageError: "Error ao deletar a imagem => $e",
            label: "label",
            stackTrace: s)
      );
    }
  }

  @override
  Future<({String? imgFilePath, IProductImgException? exception})>
      updateProductImg(
          {String? newImageUrl,
          required String newImageName,
          required String oldImageUrl}) async {
    try {
      if (newImageUrl != null && newImageUrl.contains("base64")) {
        final newPath = await _productImgBase64(newImageUrl, newImageName);
        var (:file, :exception) = await _storage.updateFile(
            newPath: ".$newPath", oldPath: ".$oldImageUrl");
        if (file != null) {
          return (imgFilePath: file.path, exception: null);
        }

        if (exception != null) {
          return (
            imgFilePath: null,
            exception: UpdateProductImgException(
                messageError: exception.messageError,
                label: "$runtimeType-updateProductImg")
          );
        }
      }
      final newPath = _createPath(newImageUrl!, newImageName);
      print("NEW PATH: $newPath");
      print("NEW IMAGE NAME: $newImageName");
      var (:file, :exception) =
          await _storage.updateFile(newPath: newPath, oldPath: ".$oldImageUrl");
      if (file != null) {
        file = await file
            .writeAsBytes(await http.readBytes(Uri.parse(newImageUrl)));
        return (imgFilePath: file.path, exception: null);
      }

      if (exception != null) {
        return (
          imgFilePath: null,
          exception: UpdateProductImgException(
              messageError: exception.messageError,
              label: "$runtimeType-updateProductImg")
        );
      }
      return (imgFilePath: file!.path, exception: null);
    } catch (e) {
      print(e);
      return (
        imgFilePath: null,
        exception: UpdateProductImgException(
            messageError: "Error ao atualizar a imagem => $e",
            label: "$runtimeType-updateProductImg")
      );
    }
  }

  @override
  Future<({Uint8List? bytes, String? imgType, IProductImgException? exception})>
      getProductImgUrlAsBytes(fileName) async {
    try {
      final (:file, :exception) =
          await _storage.getFile("./assets/images/$fileName");

      if (exception != null) {
        return (
          bytes: null,
          imgType: null,
          exception: GetProductImgException(
              messageError: exception.messageError,
              label: "$runtimeType-getProductImgUrlAsBytes")
        );
      }

      final typeFile = extension(file!.path).replaceFirst(".", "");

      final bytes = await file.readAsBytes();

      return (bytes: bytes, imgType: typeFile, exception: null);
    } catch (e, s) {
      return (
        bytes: null,
        imgType: null,
        exception: GetProductImgException(
            messageError: "Error ao obter a imagem do produto",
            label: "ProductRepository-getProductImgUrl",
            stackTrace: s)
      );
    }
  }

  String _createPath(String imgUrl, String imageName, {bool isBase64 = false}) {
    if (isBase64) {
      final createTime =
          DateTime.now().toLocal().toString().replaceAll(" ", "_");
      final fileType =
          RegExp(r"[image]+.\/(\w+)").stringMatch(imgUrl)!.split("/")[1];
      final path = "./assets/images/${imageName}_$createTime.$fileType";
      return path;
    }

    String fileType = extension(imgUrl).replaceFirst(".", "");
    final createTime = DateTime.now().toLocal().toString().replaceAll(" ", "_");

    String path = "./assets/images/${imageName}_$createTime.$fileType";
    return path;
  }

  Future<String> _productImgBase64(String imgBase64, imageName) async {
    final stringBase64 = imgBase64.split(",")[1];
    final bytes = base64Decode(stringBase64);
    final path = _createPath(imgBase64, imageName, isBase64: true);
    final imgFile = await File(path).create()
      ..writeAsBytes(bytes);
    final imgPathUrl =
        "${RegExp(r"([assets/images].+)").stringMatch(imgFile.path)}";
    return imgPathUrl;
  }

  //"Não foi possivel atualizar o arquivo ../assets/images/Peixe_2024-01-08_12:10:08.363124.jpeg
  // => Delete exception: O arquivo ../assets/images/Peixe_2024-01-08_12:10:08.363124.jpeg não foi encontrado
  // => Create exception: O arquivo ./assets/images/Hamburguer_2024-01-08_12:10:28.463946.jpeg não foi criado => null"
}
