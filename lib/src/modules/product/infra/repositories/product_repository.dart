// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:delivery_project_using_clean_code/src/generated/prisma/prisma_client.dart';
import 'package:delivery_project_using_clean_code/src/modules/product/adapters/product_adapter.dart';
import 'package:delivery_project_using_clean_code/src/modules/product/domain/entities/dto/product_dto.dart';
import 'package:delivery_project_using_clean_code/src/modules/product/domain/entities/product_entity.dart';
import 'package:delivery_project_using_clean_code/src/modules/product/domain/errors/i_product_exception.dart';
import 'package:delivery_project_using_clean_code/src/modules/product/domain/repositories/i_product_img_repository.dart';
import 'package:delivery_project_using_clean_code/src/modules/product/domain/repositories/i_product_repository.dart';
import 'package:http/http.dart';
import 'package:orm/orm.dart';

class ProductRepository extends IProductRepository {
  final IProductImgRepository _imgRepository;
  final PrismaClient _prismaClient;
  ProductRepository(this._imgRepository, this._prismaClient);
  @override
  Future<({IProductException? exception, String? message})> createProduct(
      ProductDto productDto) async {
    try {
      await _prismaClient.$connect();
      final (:imgFilePath, :exception) = await _imgRepository.addProductImg(
          imgUrl: productDto.imgUrl, imageName: productDto.name);

      if (exception != null) {
        return (
          message: "",
          exception: CreateProductException(
              messageError: exception.messageError,
              label: "$runtimeType-createProduct => ${exception.label}",
              stackTrace: exception.stackTrace)
        );
      }

      final product = await _prismaClient.product.create(
          data: ProductCreateInput(
              name: productDto.name,
              description: productDto.description,
              imgUrl: imgFilePath!,
              price: (productDto.price * 100).toInt()));

      return (
        message: "O Produto i:${product.id} nome: ${product.name} foi criado",
        exception: null
      );
    } on PrismaException catch (e, s) {
      return (
        message: null,
        exception: CreateProductException(
            messageError: e.message,
            label: "$runtimeType-createProduct",
            stackTrace: s)
      );
    } catch (e, s) {
      return (
        message: null,
        exception: ProductUnknowException(
            messageError: "Error ao criar o produto => $e",
            label: "$runtimeType-createProduct",
            stackTrace: s)
      );
    } finally {
      await _prismaClient.$disconnect();
    }
  }

  @override
  Future<({IProductException? exception, String? message})> deleteProduct(
      String? id) async {
    try {
      await _prismaClient.$connect();

      final deleteProduct = await _prismaClient.product.delete(
          where: ProductWhereUniqueInput(
              id: id,
              productComments: ProductCommentListRelationFilter(
                  every: ProductCommentWhereInput(
                      productId: UuidFilter(equals: id)))));
      if (deleteProduct != null) {
        final (message: _, :exception) =
            await _imgRepository.deleteProductImg(deleteProduct.imgUrl);
        if (exception != null) {
          return (
            message: null,
            exception: DeleteProductException(
                messageError: exception.messageError,
                label: "$runtimeType-deleteProduct => ${exception.label}",
                stackTrace: exception.stackTrace)
          );
        }

        return (message: "O Produto $id não foi encontrado", exception: null);
      }

      return (message: "O Produto $id não foi encontrado", exception: null);
    } on PrismaException catch (e, s) {
      return (
        message: null,
        exception: CreateProductException(
            messageError: e.message,
            label: "$runtimeType-deleteProduct",
            stackTrace: s)
      );
    } catch (e, s) {
      return (
        message: null,
        exception: ProductUnknowException(
            messageError: "Error ao deletar o produto => $e",
            label: "$runtimeType-createProduct",
            stackTrace: s)
      );
    } finally {
      await _prismaClient.$disconnect();
    }
  }

  @override
  Future<({IProductException? exception, List<ProductEntity>? products})>
      getAllProducts([limit = 10]) async {
    try {
      await _prismaClient.$connect();

      final getAllproducts = await _prismaClient.product.findMany(take: limit);

      final products = getAllproducts
          .map((e) => ProductAdapter.fromJson(e.toJson()))
          .toList();

      return (products: products, exception: null);
    } on PrismaException catch (e, s) {
      return (
        products: null,
        exception: GetAllProductsException(
            messageError: e.message,
            label: "$runtimeType-getAllProducts",
            stackTrace: s)
      );
    } catch (e, s) {
      return (
        products: null,
        exception: GetAllProductsException(
            messageError: "Error ao obter todos os produtos => $e",
            label: "$runtimeType-getAllProducts",
            stackTrace: s)
      );
    } finally {
      await _prismaClient.$disconnect();
    }
  }

  @override
  Future<({IProductException? exception, ProductEntity? product})>
      getProductById(String? id) async {
    try {
      await _prismaClient.$connect();

      final getProductById = await _prismaClient.product
          .findUnique(where: ProductWhereUniqueInput(id: id));
      if (getProductById != null) {
        final product = ProductAdapter.fromJson(getProductById.toJson());
        return (product: product, exception: null);
      }
      return (
        product: null,
        exception: GetProductByIdException(
            messageError: "O prodcuto $id não foi encontrado",
            label: "$runtimeType-getProductById")
      );
    } on PrismaException catch (e, s) {
      return (
        product: null,
        exception: GetProductByIdException(
            messageError: e.message,
            label: "$runtimeType-getProductById",
            stackTrace: s)
      );
    } catch (e, s) {
      return (
        product: null,
        exception: GetProductByIdException(
            messageError: "Error ao obter o produto => $e",
            label: "$runtimeType-getProductById",
            stackTrace: s)
      );
    } finally {
      await _prismaClient.$disconnect();
    }
  }

  @override
  Future<({IProductException? exception, String? message})> updateProduct(
      String? id, ProductDto newProductDto) async {
    try {
      await _prismaClient.$connect();
      final product = await _prismaClient.product
          .findUnique(where: ProductWhereUniqueInput(id: id));
      if (product != null) {
        final (:imgFilePath, :exception) =
            await _imgRepository.updateProductImg(
                newImageName: newProductDto.name,
                oldImageUrl: product.imgUrl,
                newImageUrl: newProductDto.imgUrl);

        if (exception != null) {
          print(exception.label);
          print(exception.stackTrace);
          return (
            message: null,
            exception: UpdateProductException(
                messageError:
                    "Error ao atualizar o produto => ${exception.messageError}",
                label: "$runtimeType-updateProduct => ${exception.label}")
          );
        }

        final updateProduct = await _prismaClient.product.update(
            data: ProductUpdateInput(
              name: StringFieldUpdateOperationsInput(set: newProductDto.name),
              description: StringFieldUpdateOperationsInput(
                  set: newProductDto.description),
              imgUrl: StringFieldUpdateOperationsInput(set: imgFilePath),
              price: IntFieldUpdateOperationsInput(
                  set: (newProductDto.price * 100).toInt()),
            ),
            where: ProductWhereUniqueInput(id: id));

        if (updateProduct != null) {
          return (message: "O produto $id foi atualizado", exception: null);
        }
      }

      return (
        message: null,
        exception: UpdateProductException(
            messageError: "O produto $id não foi encontrado",
            label: "$runtimeType-updateProduct")
      );
    } on PrismaException catch (e, s) {
      return (
        message: null,
        exception: UpdateProductException(
            messageError: e.message,
            label: "$runtimeType-updateProduct",
            stackTrace: s)
      );
    } on ClientException catch (e, s) {
      return (
        message: null,
        exception: UpdateProductException(
            messageError: e.message,
            label: "$runtimeType-updateProduct",
            stackTrace: s)
      );
    } catch (e, s) {
      return (
        message: null,
        exception: UpdateProductException(
            messageError: "Error ao atualizar o produto => $e",
            label: "$runtimeType-updateProduct",
            stackTrace: s)
      );
    } finally {
      await _prismaClient.$disconnect();
    }
  }
}
