import 'package:delivery_project_using_clean_code/modules/auth/domain/database/i_database.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/errors/i_database_exception.dart';
import 'package:delivery_project_using_clean_code/modules/product/adapters/product_adapter.dart';
import 'package:delivery_project_using_clean_code/modules/product/domain/entities/dto/product_dto.dart';
import 'package:delivery_project_using_clean_code/modules/product/domain/entities/product_entity.dart';
import 'package:delivery_project_using_clean_code/modules/product/domain/errors/i_product_exception.dart';
import 'package:delivery_project_using_clean_code/modules/product/domain/repositories/i_product_img_repository.dart';
import 'package:delivery_project_using_clean_code/modules/product/domain/repositories/i_product_repository.dart';

class ProductRepository extends IProductRepository {
  final IDatabase _database;
  final IProductImgRepository _imgRepository;

  ProductRepository(this._database, this._imgRepository);

  @override
  Future<({IProductException? exception, String? message})> createProduct(
      ProductDto productDto) async {
    try {
      await _database.openDatabase();

      final imgPath = await _imgRepository.addProductImg(
          imgUrl: productDto.imgUrl, imageName: productDto.name);

      await _database.query(
          "INSERT INTO product(name,description,img_url,price) VALUES (@name,@description,@img_url,@price)",
          {
            "name": productDto.name,
            "description": productDto.description,
            "img_url": imgPath,
            "price": productDto.price,
          });

      return (message: "O produto foi criado", exception: null);
    } on OpenDatabaseException catch (e) {
      return (
        message: null,
        exception: CreateProductException(
            messageError: e.messageError,
            label: "$runtimeType-createProduct -> ${e.label}")
      );
    } on QueryDatabaseException catch (e) {
      return (
        message: null,
        exception: CreateProductException(
            messageError: e.messageError,
            label: "$runtimeType-createProduct -> ${e.label}")
      );
    } catch (e, s) {
      return (
        message: null,
        exception: ProductUnknowException(
            messageError: "Error ao criar o produto: $e",
            label: "$runtimeType-createProduct",
            stackTrace: s)
      );
    } finally {
      _database.closeDatabase();
    }
  }

  @override
  Future<({IProductException? exception, String? message})> deleteProduct(
      String? id) async {
    try {
      await _database.openDatabase();
      final futures = await Future.value([
        await _database
            .query("SELECT img_url FROM product WHERE id = @id", {"id": id}),
        await _database.query("DELETE FROM product WHERE id = @id", {"id": id})
      ]);
      if (futures[0].isNotEmpty) {
        final productImgPath = futures[0][0]["img_url"];

        await _imgRepository.deleteProductImg(".$productImgPath");

        return (message: "O produto $id foi deletado", exception: null);
      }

      return (message: "O produto $id não foi encontrado", exception: null);
    } on OpenDatabaseException catch (e) {
      return (
        message: null,
        exception: DeleteProductException(
            messageError: e.messageError,
            label: "$runtimeType-deleteProduct -> ${e.label}")
      );
    } on QueryDatabaseException catch (e) {
      return (
        message: null,
        exception: DeleteProductException(
            messageError: e.messageError,
            label: "$runtimeType-deleteProduct -> ${e.label}")
      );
    } catch (e, s) {
      return (
        message: null,
        exception: ProductUnknowException(
            messageError: "Error ao deletar o produto: $e",
            label: "$runtimeType-deleteProduct",
            stackTrace: s)
      );
    } finally {
      _database.closeDatabase();
    }
  }

  @override
  Future<({IProductException? exception, List<ProductEntity>? products})>
      getAllProducts([limit = 10]) async {
    try {
      final List<ProductEntity> products = [];
      await _database.openDatabase();

      final rows = await _database
          .query("SELECT * FROM product limit @limit", {"limit": limit});

      for (var row in rows) {
        products.add(ProductAdapter.fromJson(row));
      }

      return (products: products, exception: null);
    } on OpenDatabaseException catch (e) {
      return (
        products: null,
        exception: GetAllProductsException(
            messageError: e.messageError,
            label: "$runtimeType-getAllProducts -> ${e.label}")
      );
    } on QueryDatabaseException catch (e) {
      return (
        products: null,
        exception: GetAllProductsException(
            messageError: e.messageError,
            label: "$runtimeType-getAllProducts -> ${e.label}")
      );
    } catch (e, s) {
      return (
        products: null,
        exception: ProductUnknowException(
            messageError: "Error ao obter os produtos: $e",
            label: "$runtimeType-getAllProducts",
            stackTrace: s)
      );
    } finally {
      _database.closeDatabase();
    }
  }

  @override
  Future<({IProductException? exception, ProductEntity? product})>
      getProductById(String? id) async {
    try {
      await _database.openDatabase();

      final rows = await _database
          .query("SELECT * FROM product WHERE id = @id", {"id": id});

      for (var row in rows) {
        return (product: ProductAdapter.fromJson(row), exception: null);
      }

      return (
        product: null,
        exception: ProductUnknowException(
            messageError: "O produto não encontrado",
            label: "$runtimeType-getProductById")
      );
    } on OpenDatabaseException catch (e) {
      return (
        product: null,
        exception: GetProductByIdException(
            messageError: e.messageError,
            label: "$runtimeType-getProductById -> ${e.label}")
      );
    } on QueryDatabaseException catch (e) {
      return (
        product: null,
        exception: GetProductByIdException(
            messageError: e.messageError,
            label: "$runtimeType-getProductById -> ${e.label}")
      );
    } catch (e, s) {
      return (
        product: null,
        exception: ProductUnknowException(
            messageError: "Error ao obter o produto: $e",
            label: "$runtimeType-getProductById",
            stackTrace: s)
      );
    } finally {
      _database.closeDatabase();
    }
  }

  @override
  Future<({IProductException? exception, String? message})> updateProduct(
      String? id, ProductDto newProductDto) async {
    try {
      await _database.openDatabase();
      final rows = await _database
          .query("SELECT img_url FROM product WHERE id = @id", {"id": id});

      if (rows.isNotEmpty) {
        final productImgPath = rows[0]["img_url"];
        final newProductImgPath = await _imgRepository.updateProductImg(
            productId: id,
            imgUrl: newProductDto.imgUrl,
            newImageName: newProductDto.name,
            oldImageUrl: productImgPath);
        await _database.query(
            "UPDATE product SET name = @name, description = @description, img_url = @img_url, price = @price WHERE id = @id",
            {
              "id": id,
              "name": newProductDto.name,
              "description": newProductDto.description,
              "img_url": newProductImgPath,
              "price": newProductDto.price
            });

        return (message: "O produto $id foi atualizado", exception: null);
      }

      return (message: "O produto $id não foi encotrado", exception: null);
    } on OpenDatabaseException catch (e) {
      return (
        message: null,
        exception: UpdateProductException(
            messageError: e.messageError,
            label: "$runtimeType-updateProduct -> ${e.label}")
      );
    } on QueryDatabaseException catch (e) {
      return (
        message: null,
        exception: UpdateProductException(
            messageError: e.messageError,
            label: "$runtimeType-updateProduct -> ${e.label}")
      );
    } catch (e, s) {
      return (
        message: null,
        exception: ProductUnknowException(
            messageError: "Error ao atualizar o produto: $e",
            label: "$runtimeType-updateProduct",
            stackTrace: s)
      );
    } finally {
      _database.closeDatabase();
    }
  }
}
