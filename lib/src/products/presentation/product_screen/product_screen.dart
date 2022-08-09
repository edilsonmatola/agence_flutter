import 'package:agence_flutter/src/constants/app_colors.dart';
import 'package:agence_flutter/src/products/presentation/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:lazy_loading_list/lazy_loading_list.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.primaryColor,
          centerTitle: true,
          title: const Text(
            'Produtos',
          ),
        ),
        drawer: const CustomDrawer(),
        body: ListView.builder(
          itemCount: 15,
          itemBuilder: (context, index) {
            return LazyLoadingList(
              initialSizeOfItems: 10,
              index: index,
              hasMore: true,
              loadMore: () => debugPrint(
                'Carregando...',
              ),
              child: ListTile(
                title: Text(
                  '$index',
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
