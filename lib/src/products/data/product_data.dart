import '../../constants/app_assets.dart';
import '../models/product_model.dart';

final product01 = ProductModel(
  image: AppAssets.product01,
  price: 6550,
  name: 'Apple iPhone 13 (128GB)',
);

final product02 = ProductModel(
  image: AppAssets.product02,
  price: 8230.80,
  name: 'Apple iPhone 13 Pro (521GB)',
);

final product03 = ProductModel(
  image: AppAssets.product03,
  price: 16459.15,
  name: 'Apple iPhone 13 (128GB)',
);

final product04 = ProductModel(
  image: AppAssets.product04,
  price: 4000,
  name: 'Samsung Galaxy S22 Plus',
);

final product05 = ProductModel(
  image: AppAssets.product05,
  price: 8200,
  name: 'iPhone 13 Pro (128GB)',
);

final listaProdutos = [
  product01,
  product02,
  product03,
  product04,
  product05,
];
