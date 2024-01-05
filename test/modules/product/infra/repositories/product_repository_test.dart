import 'package:delivery_project_using_clean_code/modules/auth/domain/database/i_database.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/errors/i_database_exception.dart';
import 'package:delivery_project_using_clean_code/modules/product/domain/entities/dto/product_dto.dart';
import 'package:delivery_project_using_clean_code/modules/product/domain/entities/product_entity.dart';
import 'package:delivery_project_using_clean_code/modules/product/domain/errors/i_product_exception.dart';
import 'package:delivery_project_using_clean_code/modules/product/domain/repositories/i_product_img_repository.dart';
import 'package:delivery_project_using_clean_code/modules/product/domain/repositories/i_product_repository.dart';
import 'package:delivery_project_using_clean_code/modules/product/infra/repositories/product_repository.dart';

import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

final getAllProductsResult = [
  {
    "id": "wdwd-dwdw",
    "name": "name",
    "description": "description",
    "price": 10.0,
    "img_url": "/assets/images/name.jpg"
  },
  {
    "id": "dwdw-wdwd",
    "name": "name2",
    "description": "description2",
    "price": 5.0,
    "img_url": "/assets/images/name2.jpg"
  },
];

final throwQueryDatabaseException = QueryDatabaseException(
    messageError: "Error no metodo query", label: "label");

class MockDatabase extends Mock implements IDatabase {
  @override
  Future<void> openDatabase() async {}

  @override
  Future<int> execute(String path, [values]) async => 0;
}

class MockProductImgRepository extends Mock implements IProductImgRepository {}

void main() {
  late final IDatabase database;
  late final IProductRepository repository;
  late final IProductImgRepository imgRepository;

  setUpAll(() {
    database = MockDatabase();
    imgRepository = MockProductImgRepository();
    repository = ProductRepository(database, imgRepository);
  });

  tearDown(() {
    resetMocktailState();
  });
  group("GetAllProducts tests: \n", () {
    group("[Success tests] \n =>", () {
      test(
          'Should return a products list when i\'m call the [repository.getAllProducts] method',
          () async {
        when(() => database.query(any(), any()))
            .thenAnswer((_) async => getAllProductsResult);
        final (:products, :exception) = await repository.getAllProducts(10);

        expect(products, isA<List<ProductEntity>>());
        expect(exception?.messageError, isNull);
      });
    });

    group("[Failure tests] \n =>", () {
      test(
          "Should return an exception [GetAllProductsException] when i'm call the [repository.getAllProducts] method",
          () async {
        when(() => database.query(any(), any())).thenThrow(
            QueryDatabaseException(
                messageError: "Error ao fazer a query", label: "label"));
        final (:products, :exception) = await repository.getAllProducts(10);

        expect(products, isNull);
        expect(exception, isA<GetAllProductsException>());
        expect(exception?.messageError, "Error ao fazer a query");
      });

      test(
          'Should return an exception [ProductUnknowException] when i\'m call the [repository.getAllProducts] method',
          () async {
        when(() => database.query(any(), any()))
            .thenThrow(Exception("Error no database"));
        final (:products, :exception) = await repository.getAllProducts(10);

        expect(products, isNull);
        expect(exception, isA<ProductUnknowException>());
        expect(exception?.messageError,
            "Error ao obter os produtos: Exception: Error no database");
      });
    });
  });

  group("GetProductById tests: \n", () {
    group("[Success tests] \n =>", () {
      test(
          "Should return a product when i'm call the [repository.getProductById] method",
          () async {
        when(() => database.query(any(), any())).thenAnswer((_) async => [
              {
                "id": "wdwd-dwdw",
                "name": "name",
                "description": "description",
                "price": 10.0,
                "img_url": "/assets/images/name.jpg"
              }
            ]);

        final (:product, :exception) =
            await repository.getProductById("wdwd-dwdw");

        expect(product, isA<ProductEntity>());
        expect(product, isNotNull);
        expect(exception, isNull);
      });

      test(
          "Shouldn't return a product when i'm call the [repository.getProductById] method",
          () async {
        when(() => database.query(any(), any())).thenAnswer((_) async => []);

        final (:product, :exception) =
            await repository.getProductById("wdwd-dwdw");

        expect(product, isNull);
        expect(exception?.messageError, "O produto não encontrado");
      });
    });

    group("[Failure tests] \n =>", () {
      test(
          "Should return an exception [GetProductByIdException] when i'm call the [repository.getProductByid] method",
          () async {
        when(() => database.query(any(), any())).thenThrow(
            QueryDatabaseException(
                messageError: "Error no metodo query", label: "label"));

        final (product: _, :exception) =
            await repository.getProductById("wdwd-dwdw");
        expect(exception, isA<GetProductByIdException>());
        expect(exception?.messageError, "Error no metodo query");
      });
      test(
          "Should return an exception [ProductUnknowException] when i'm call the [repository.getProductByid] method",
          () async {
        when(() => database.query(any(), any()))
            .thenThrow(Exception("Error no metodo query"));

        final (product: _, :exception) =
            await repository.getProductById("wdwd-dwdw");
        expect(exception, isA<ProductUnknowException>());

        expect(exception?.messageError,
            "Error ao obter o produto: Exception: Error no metodo query");
      });
    });
  });

  group("CreateProduct tests: \n", () {
    group("[Success tests] \n =>", () {
      test(
          "Should return a message [O produto foi criado] when i'm call the [repository.createProduct] method",
          () async {
        when(() => imgRepository.addProductImg(
                imageName: any(named: "imageName", that: isA<String?>()),
                imgUrl: any(named: "imgUrl", that: isA<String>())))
            .thenAnswer((_) async => "/assets/images/product.jpg");
        when(() => database.query(any(), any())).thenAnswer((_) async => []);

        final (:message, :exception) = await repository.createProduct(
            ProductDto(
                name: "product",
                description: "description",
                price: 20,
                imgUrl: "/assets/images/product.jpg"));

        expect(message, "O produto foi criado");
        expect(exception, isNull);
      });
    });

    group("[Failure tests] \n =>", () {
      test(
          "Should return an exception [ProductUnknowException] when i'm call the [repository.createProduct] method",
          () async {
        when(() => imgRepository.addProductImg(
                imageName: any(named: "imageName", that: isA<String?>()),
                imgUrl: any(named: "imgUrl", that: isA<String>())))
            .thenAnswer((_) async => "/assets/images/product.jpg");
        when(() => database.query(any(), any()))
            .thenThrow(Exception("Error no metodo query"));

        final (:message, :exception) = await repository.createProduct(
            ProductDto(
                name: "product",
                description: "description",
                price: 20,
                imgUrl: "/assets/images/product.jpg"));

        expect(message, isNull);
        expect(exception, isA<ProductUnknowException>());
        expect(exception?.messageError,
            "Error ao criar o produto: Exception: Error no metodo query");
      });
      test(
          "Should return an exception [CreateProductException] when i'm call the [repository.createProduct] method",
          () async {
        when(() => imgRepository.addProductImg(
                imageName: any(named: "imageName", that: isA<String?>()),
                imgUrl: any(named: "imgUrl", that: isA<String>())))
            .thenAnswer((_) async => "/assets/images/product.jpg");
        when(() => database.query(any(), any())).thenThrow(
            QueryDatabaseException(
                messageError: "Error no metodo query", label: "label"));

        final (:message, :exception) = await repository.createProduct(
            ProductDto(
                name: "product",
                description: "description",
                price: 20,
                imgUrl: "/assets/images/product.jpg"));

        expect(message, isNull);
        expect(exception, isA<CreateProductException>());
        expect(exception?.messageError, "Error no metodo query");
      });
    });
  });

  group("DeleteProduct tests: \n", () {
    group("[Success tests] \n =>", () {
      test(
          "Should return a message [O produto wdwd-dwdwd foi deletado] when i'm call the [repository.deleteProduct] method",
          () async {
        when(() => database.query(any(), any())).thenAnswer((_) async => [
              {"img_url": "/assets/images/product.jpg"}
            ]);
        when(() => imgRepository.deleteProductImg(any()))
            .thenAnswer((_) async => "");

        final (:message, :exception) =
            await repository.deleteProduct("wdwd-dwdwd");

        expect(message, "O produto wdwd-dwdwd foi deletado");
        expect(exception, isNull);
      });
      test(
          "Should return a message [O produto wdwd-dwdwd não foi encontrado] when i'm call the [repository.deleteProduct] method",
          () async {
        when(() => database.query(any(), any())).thenAnswer((_) async => []);
        when(() => imgRepository.deleteProductImg(any()))
            .thenAnswer((_) async => "");

        final (:message, :exception) =
            await repository.deleteProduct("wdwd-dwdwd");

        expect(message, "O produto wdwd-dwdwd não foi encontrado");
        expect(exception, isNull);
      });
    });

    group("[Failure tests] \n =>", () {
      test(
          "Should return an exception [DeleteProductException] when i'm call the [repository.deleteProduct] method",
          () async {
        when(() => database.query(any(), any())).thenThrow(
            QueryDatabaseException(
                messageError: "Error no metodo query", label: "label"));

        final (:message, :exception) =
            await repository.deleteProduct("wdd-wdwdw");
        expect(message, isNull);
        expect(exception, isA<DeleteProductException>());
        expect(exception?.messageError, "Error no metodo query");
      });

      test(
          "Should return an exception [ProductUnknowException] when i'm call the [repository.deleteProduct] method",
          () async {
        when(() => database.query(any(), any()))
            .thenThrow(Exception("Error no metodo query"));

        final (:message, :exception) =
            await repository.deleteProduct("wdd-wdwdw");

        expect(message, isNull);
        expect(exception, isA<ProductUnknowException>());
        expect(exception?.messageError,
            "Error ao deletar o produto: Exception: Error no metodo query");
      });
    });
  });

  group("UpdateProduct test: \n", () {
    group("[Success tests] \n =>", () {
      test(
          "Should return a message [O produto wdwd-dwdw foi atualizado] when i'm call the [repository.updateProduct] method",
          () async {
        when(() => database.query(any(), any())).thenAnswer((_) async => [
              {
                "id": "wdwd-dwdw",
                "name": "name",
                "description": "description",
                "price": 10.0,
                "img_url": "/assets/images/name.jpg"
              }
            ]);
        when(() => imgRepository.updateProductImg(
                imgUrl: captureAny(named: "imgUrl"),
                oldImageUrl: captureAny(named: "oldImageUrl"),
                productId: captureAny(named: "productId"),
                newImageName: captureAny(named: "newImageName")))
            .thenAnswer((_) async => "");

        final (:message, :exception) = await repository.updateProduct(
            "wdwd-dwdw",
            ProductDto(
                name: "name2",
                description: "description2",
                price: 20,
                imgUrl: "/assets/images/name2.jpg"));

        expect(message, "O produto wdwd-dwdw foi atualizado");
        expect(exception, isNull);
      });

      test(
          "Should return a message [O produto wdwd-dwdw não foi encontrado] when i'm call the [repository.updateProduct] method",
          () async {
        when(() => database.query(any(), any())).thenAnswer((_) async => []);
        when(() => imgRepository.updateProductImg(
                imgUrl: captureAny(named: "imgUrl"),
                oldImageUrl: captureAny(named: "oldImageUrl"),
                productId: captureAny(named: "productId"),
                newImageName: captureAny(named: "newImageName")))
            .thenAnswer((_) async => "");

        final (:message, :exception) = await repository.updateProduct(
            "wdwd-dwdw",
            ProductDto(
                name: "name2",
                description: "description2",
                price: 20,
                imgUrl: "/assets/images/name2.jpg"));

        expect(message, "O produto wdwd-dwdw não foi encotrado");
        expect(exception, isNull);
      });
    });

    group("[Failure tests] \n =>", () {
      test(
          "Should return an exception [UpdateProductException] when i'm call the [repository.updateProduct] method",
          () async {
        when(() => database.query(any(), any()))
            .thenThrow(throwQueryDatabaseException);
        when(() => imgRepository.updateProductImg(
            imgUrl: captureAny(named: "imgUrl"),
            oldImageUrl: captureAny(named: "oldImageUrl"),
            productId: captureAny(named: "productId"),
            newImageName: captureAny(named: "newImageName")));

        final (:message, :exception) = await repository.updateProduct("",
            ProductDto(name: "name", description: "description", price: 10));

        expect(message, isNull);
        expect(exception, isA<UpdateProductException>());
        expect(exception?.messageError, "Error no metodo query");
      });

      test(
          "Should return an exception [ProdyctUnknowException] when i'm call the [repository.updateProduct] method",
          () async {
        when(() => database.query(any(), any()))
            .thenThrow(Exception("Error no metodo query"));
        when(() => imgRepository.updateProductImg(
            imgUrl: captureAny(named: "imgUrl"),
            oldImageUrl: captureAny(named: "oldImageUrl"),
            productId: captureAny(named: "productId"),
            newImageName: captureAny(named: "newImageName")));

        final (:message, :exception) = await repository.updateProduct("",
            ProductDto(name: "name", description: "description", price: 10));

        expect(message, isNull);
        expect(exception, isA<ProductUnknowException>());
        expect(exception?.messageError,
            "Error ao atualizar o produto: Exception: Error no metodo query");
      });
    });
  });
}
