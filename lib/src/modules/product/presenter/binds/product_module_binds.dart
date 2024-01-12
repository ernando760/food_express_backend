import 'package:delivery_project_using_clean_code/src/generated/prisma/prisma_client.dart';
import 'package:delivery_project_using_clean_code/src/modules/product/barrels/product_module_barrel.dart';
import 'package:delivery_project_using_clean_code/src/modules/product/infra/repositories/product_comment_repository.dart';
import 'package:delivery_project_using_clean_code/src/modules/product/infra/repositories/product_repository.dart';

class ProductModulesBinds {
  static List<Bind<Object>> binds = [
    Bind.instance<IStorage>(LocalStorage()),
    Bind.singleton<IProductImgRepository>(
        (i) => ProductImgRepository(i<IStorage>())),
    Bind.singleton<IProductRepository>((i) =>
        ProductRepository(i<IProductImgRepository>(), i<PrismaClient>())),
    Bind.singleton<IProductCommentRepository>(
        (i) => ProductCommentRepository(i<PrismaClient>())),
    Bind.singleton<GetAllProducts>(
        (i) => GetAllProducts(i<IProductRepository>())),
    Bind.singleton<GetProductById>(
        (i) => GetProductById(i<IProductRepository>())),
    Bind.singleton<CreateProduct>(
        (i) => CreateProduct(i<IProductRepository>())),
    Bind.singleton<DeleteProduct>(
        (i) => DeleteProduct(i<IProductRepository>())),
    Bind.singleton<UpdateProduct>(
        (i) => UpdateProduct(i<IProductRepository>())),
    Bind.singleton<GetProductImg>(
        (i) => GetProductImg(i<IProductImgRepository>())),
    Bind.singleton<GetAllProductComments>(
        (i) => GetAllProductComments(i<IProductCommentRepository>())),
    Bind.singleton<AddProductComment>(
        (i) => AddProductComment(i<IProductCommentRepository>())),
    Bind.singleton<RemoveProductComment>(
        (i) => RemoveProductComment(i<IProductCommentRepository>())),
    Bind.singleton<UpdateProductComment>(
        (i) => UpdateProductComment(i<IProductCommentRepository>())),
    Bind.singleton<ProductController>((i) => ProductController(
          i<CreateProduct>(),
          i<GetProductById>(),
          i<UpdateProduct>(),
          i<GetProductImg>(),
          i<DeleteProduct>(),
          i<GetAllProducts>(),
          i<GetAllProductComments>(),
        )),
    Bind.singleton<ProductCommentController>(
      (i) => ProductCommentController(
          i<GetAllProductComments>(),
          i<AddProductComment>(),
          i<RemoveProductComment>(),
          i<UpdateProductComment>()),
    )
  ];
}
