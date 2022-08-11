import 'package:agence_flutter/src/constants/app_colors.dart';
import 'package:agence_flutter/src/products/data/data.dart';
import 'package:agence_flutter/src/products/presentation/order_screen/order_screen.dart';
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
        body: GridView.count(
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          physics: const BouncingScrollPhysics(),
          crossAxisCount: 2,
          children: List.generate(
            listaProdutos.length,
            (index) => LazyLoadingList(
              initialSizeOfItems: 4,
              index: index,
              hasMore: true,
              loadMore: () => const Text(
                'Carregando...',
              ),
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.30),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: const Offset(0, 2), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Material(
                  shadowColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: Colors.white,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(20),
                    overlayColor: MaterialStateProperty.all(
                      Colors.grey.shade400,
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OrderScreen(),
                        ),
                      );
                    },
                    child: SizedBox(
                      width: 100,
                      height: 140,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                width: 300,
                                height: 300,
                                color: const Color.fromRGBO(248, 247, 250, 1),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 1,
                                    bottom: 1,
                                  ),
                                  child: Image(
                                    image: AssetImage(
                                      listaProdutos[index].image,
                                    ),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    listaProdutos[index].name,
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '\$R${listaProdutos[index].price.toStringAsFixed(2)}',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline5,
                                      ),
                                      const SizedBox(width: 8),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
