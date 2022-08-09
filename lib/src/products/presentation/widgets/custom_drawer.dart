import 'package:agence_flutter/src/products/presentation/widgets/drawer_menu_items.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        onTap: () {},
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          children: const [
            SizedBox(
              height: 48,
            ),
            DrawerMenuItems(
              icon: Icons.person,
              text: 'Perfil',
            ),
            SizedBox(
              height: 16,
            ),
            DrawerMenuItems(
              icon: Icons.shopping_cart,
              text: 'Meus Produtos',
            ),
            SizedBox(
              height: 16,
            ),
            DrawerMenuItems(
              icon: Icons.settings,
              text: 'Configurações',
            ),
            SizedBox(
              height: 16,
            ),
            DrawerMenuItems(
              icon: Icons.logout,
              text: 'Logout',
            ),
          ],
        ),
      ),
    );
  }
}
